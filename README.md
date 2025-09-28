# Raspberry Pi Security Camera

Our old security system would crash randomly and was annoying to restart.  
To fix that, I used a **Raspberry Pi** and a single **Bash script** that runs as a **systemd** service. If the script crashes, it restarts. If the Pi reboots, it comes back on its own. The goal was simple: **better reliability with less manual work**.

---

## Why I Built This

- **Problem:** Unstable camera software that needed manual restarts.
- **Approach:** A lightweight script managed by `systemd` so it auto-recovers.
- **Result:** The camera display runs 24/7 with hands-off operation and predictable behaviour.

---

## What It Does

- Launches one or more **RTSP** camera feeds (e.g., a 2×2 wall).
- Runs continuously in the background.
- **Auto-restart** on crash and **auto-start** on boot (via `systemd`).
- Simple, dependency-light, and easy to maintain.

---

## Tech Used

- **Raspberry Pi** (tested on Pi 3/4, Raspberry Pi OS Bookworm)
- **Bash** (single script)
- **ffmpeg/ffplay** (RTSP handling and display)
- **systemd** (process supervision and restart policy)

---

## Future Ideas

I want to keep pushing this project toward DevOps practices:

- **Containerisation:** Run the script in Docker with environment variables instead of editing configs directly.  
- **CI/CD:** Add GitHub Actions to lint, test, and build images automatically.  
- **Kubernetes:** Package it as a Helm chart to deploy on k3s and manage multiple camera sets.  
- **Monitoring:** Add Prometheus/Grafana dashboards and alerts if a feed goes down.  

These steps will turn a small home project into a more production-ready system that also doubles as a DevOps learning path.
