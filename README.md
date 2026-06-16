# ⚡ Predictive Input Trigger & Subtick Firing Booster (Lua)

An optimized, high-performance Lua framework designed for **latency reduction, predictive network subtick firing, and dynamic asynchronous state optimization** within 3D simulation engines.

This repository serves as an advanced architectural reference for software engineers and systems analysts studying runtime network data packets, tick-rate manipulations (`Tick Shifting`), and input-driven calculation loops.

---

## ⚠️ Academic & Research Disclaimer
This repository is published strictly for **educational, analytical, and scientific research purposes**. It explores the behavioral mechanics of asynchronous input polling and server-side subtick synchronization. The author does not condone, support, or promote the deployment of this configuration script in live, competitive gaming matchmaking environments.

---

## 🚀 Core Architectural Features

### 1. Dynamic Input-Driven State Aggregation
The framework intercepts the engine's primary execution callback loop (`on_createmove_start`). Upon detecting a primary trigger state (`button 1`), it aggregates multiple computational routines simultaneously, forcing the client engine to process critical commands ahead of schedule.

### 2. Network Tick-Shift Manipulation (Dual Shot Physics)
Demonstrates the programmatic concept of **Double-Tap tick shifting**. By forcing a precise scalar offset (up to 16 ticks) into the simulation window, it analyzes how client-side predictions can queue back-to-back command packages instantly.

### 3. Asynchronous Hitchance Optimization
Explores immediate vector discharge mechanisms. The routine temporarily overrides the core mathematical validation threshold down to a minimal percentage ($5\%$), eliminating calculation delays and achieving absolute near-instantaneous command execution.

### 4. Direct Subtick Injection Layer
Bypasses traditional client packet delay buffers by programmatically pushing native subtick command signals (`cmd.add_subtick`) directly into the engine's network serialization pipeline.

---

## 🎨 Engine UI Calibration Dashboard
The script interfaces directly with the framework's runtime GUI renderer, generating an interactive **"Rage Booster Pro"** control stack:

* **Global Activation Switch:** A core boolean checkbox that dynamically hooks/unhooks the entire monitoring routine.
* **Damage Threshold Controller:** An integer slider scaling from 1 to 100 to dynamically calibrate output weight variables.
* **Instant Double-Tap Interface:** A dedicated toggle equipped with an underlying precise tick-shift calibration slider (1-16 ticks).
* **Predictive Accuracy Optimizer:** A dynamic toggle to switch between default engine verification models ($65\%$) and accelerated execution arrays ($5\%$).

---

## 📦 Directory Structure
* `rage_booster_pro.lua` — Core calculation script containing network hooks and subtick event routines.
* `README.md` — Technical system overview, pipeline analysis, and structural documentation.

---

## 📄 License
This architecture is completely open-source and officially distributed under the terms of the **MIT License**.
