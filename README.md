# Samar College — Kid Server 🧸 (Roblox)

**Capstone project:** *A Roblox-Based Social Virtual World with Server Category Selection Based on Users' Year Level*
**Team:** TEAM PRUC — BSIT, Samar College, Catbalogan City, Samar

This repository holds the **scripts** for the **Kid Server** (Kinder to Grade 6).
The Junior High / Senior High / College version lives in a separate repository: **Samar College (Main)**.

## Kid-friendly changes (compared with Main)
- Levels limited to Kindergarten – Grade 6; roles: Pupil, Teacher, School Worker, Campus Helper
- Easier events: shorter Quiz Bee (grade-level questions), 10-floor Tower, slower "friendly hall monitors" in Escape School
- Guess the Drawing: only the 🤖 Art Bot draws (no free-form player drawing)
- No server teleport, no Robux donations
- Instrument-only music library (Party & Disco, Instruments, Lofi, Chill, Peace, Happy — 250+ tracks)
- Bright orange/purple theme and kid tips on the loading screen
- Roblox content maturity rating: **Minimal** (open to Roblox Kids accounts, ages 5–8)

## Repository layout
```
src/
  ServerScriptService/   server logic
  ReplicatedStorage/     shared modules & config
  ReplicatedFirst/       loading screen
  StarterGui/            HUD and panels
  StarterPlayer/         client scripts
  ServerStorage/         build tools and event maps
  Workspace/             scripts attached to campus objects
default.project.json     Rojo project file
```
File names follow the Rojo convention: `*.server.luau` = Script, `*.client.luau` = LocalScript, `*.luau` = ModuleScript.

> Only scripts are stored here. The 3D campus (parts, models, terrain) lives in the Roblox place file.

## Docs
- [CHANGELOG.md](CHANGELOG.md) — everything added, version by version
- [FUNCTIONS.md](FUNCTIONS.md) — every core script, what it does and the functions it defines
