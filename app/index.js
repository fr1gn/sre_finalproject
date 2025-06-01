const express = require("express");
const promClient = require("prom-client");
const mongoose = require("mongoose");

const app = express();
const PORT = 5000;

// Prometheus metrics
promClient.collectDefaultMetrics();
const httpRequestCounter = new promClient.Counter({
  name: "http_requests_total",
  help: "Total HTTP requests",
});

// connection with retry
const MONGO_URI = process.env.MONGO_URI || "mongodb://localhost:27017/sre_db";
function connectWithRetry() {
  mongoose.connect(MONGO_URI, {
    useNewUrlParser: true,
    useUnifiedTopology: true
  }).then(() => {
    console.log("✅ Connected to MongoDB");
  }).catch((err) => {
    console.error("❌ MongoDB connection failed, retrying in 5s...", err.message);
    setTimeout(connectWithRetry, 5000);
  });
}
connectWithRetry();

// Routes
app.get("/health", (req, res) => {
  httpRequestCounter.inc();
  res.json({ status: "OK" });
});

app.get("/metrics", async (req, res) => {
  res.set("Content-Type", promClient.register.contentType);
  res.end(await promClient.register.metrics());
});

app.listen(PORT, () => {
  console.log(`🚀 Server is running on port ${PORT}`);
});

