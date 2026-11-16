# Changelog — Samar College [Kid Server] 🧸

All notable changes to the **Kid Server** (Kinder to Grade 6).
v0.1 – v0.5 are shared with the Main game (the Kid Server started as a copy of it).

## v0.1 – Campus build
- Recreated the Samar College campus: ground floor to 5th floor, rooftop, corridors, front gate, entry/exit gates, driveway and plaza
- School colours applied (emerald-green roofs and trim)
- Every floor sorted into folders by floor, then by type (rooms, doors, props, fans & lights); parts renamed by building/room
- Interactive props: tap/E-to-open doors, sliding & swing doors, gates, curtains, windows, drawers, whiteboards, slide shows, light switches, power toggles & LEDs, ceiling/wall fans, water dispensers, toilets, thesis shelves, elevator
- Seats with sit prompts, sleep seats, faculty/principal knock doors, open/closed signs, library time-in, clearance desks, suggestion boxes, TV ads
- Day/night cycle and weather system
- Fall rescue (respawn players who fall off the map)

## v0.2 – Player systems
- Loading screen with branding, progress bar, rotating tips and "tap to continue"
- Main HUD: Profile, Bag, Map, Music and Settings buttons
- Profile panel: play time, events joined, equipment count, event & common coins, achievements, role toggle
- Bag with Cosmetic / Equipment / Consumable tabs (descriptions, equip status, quantities) and a hotbar
- Level progression: grade-by-grade levels, each unlocked by play time + a level quiz; profile title updates
- Roleplay roles and outfits (RoleplayConfig, Outfits), staff access and ROTC permission
- Settings: music / sound volume, event and leaderboard notifications
- Shop (coins), gear, flashlight, bikes and boats
- Player data saving (PlayerData / PlayerRecords) with a Studio fallback store
- Player reports and admin tools
- Campus Life: NPCs with dialogue, class schedule/periods, deans and office staff
- Room hosting signs (rooms get a hallway sign; doorless rooms use the nearest door)

## v0.3 – Events
- Event manager with rotation, rarity, cooldowns and rewards (common & event coins, XP)
- Common events: Quiz Bee, Booth mini-games (Balloon Pop, Guess the Number, Hoop Shot, Lucky Wheel, Memory Match, Ring Toss, Target Throw, Whack-a-Mole), Guess the Drawing, Tower Game (14 obstacle sections), Escape School, Campus Check-In
- Rare events: Intramurals, Foundation Day
- Talent stage with emotes, sports (basketball, chess)
- PATAAS sky climb (Easy & Hard) with best-time saving
- Event admin controls

## v0.4 – Leaderboards & music
- Four leaderboard stands in the plaza, each a scrollable **Top 50** with tabs:
  - Coins: common coins, rare (event) coins
  - Wins: total event wins + wins per event
  - Speed runs: Tower, PATAAS Easy, PATAAS Hard (fastest time)
  - Legends: stay time (and donations on Main)
- Your own rank shown at the bottom ("You: #rank"), headshots, ▲▼ scrolling
- Music player with a licensed music library (APM / DistroKid catalogues), categories and colours

## v0.5 – Events rotation & Quiz Bee bank
- Event rotation every **2 minutes**; the next countdown only starts after the running event (and its results) finish, so events never overlap
- If every event is on cooldown, a different enabled event is picked instead of stalling
- Quiz Bee: **100+ questions per department/course/strand**, picked by the room's department and grade
  - Elementary, Junior High, STEM, HUMSS, GAS, ABM, TVL-ICT, BSIT, BSCRIM, BSEd
  - Questions asked in the last hour are avoided so rounds don't repeat
- Rooftop gap at the stair end filled in

## v0.6 – Kid Server
- **Levels:** Kindergarten to Grade 6 only; Junior High / SHS / College content and course picker removed
- **Roles:** Pupil, Teacher (K–6 subjects), School Worker, Campus Helper
- **Look & feel:** orange / blue / purple theme, kid tips and "🧸 KID SERVER" loading screen, orange HUD accent
- **Events made kid-friendly:**
  - Quiz Bee: 6 questions, 20 s each, all rooms set to Elementary grades K–6
  - Tower Game: 10 floors, checkpoint every 2 floors
  - Escape School: slower "friendly hall monitors", shorter detention, smaller view range
  - Guess the Drawing: **only the 🤖 Art Bot draws** (no player drawing)
  - Intramurals win tab removed from the leaderboards
- **Shop:** college uniform removed, energy drink → Fruit Juice Box, cheaper starter items
- **Leaderboards:** retitled "⭐ CAMPUS STARS" and "TOP COIN COLLECTORS", donations tab removed

## v0.7 – Music
- All songs with vocals removed (instrument-only)
- 214 new instrumental tracks; new categories **Party & Disco** 🎉 and **Popular Instruments** 🎻
- Library: Party 37, Instruments 38, Lofi 38, Chill 36, Peace 59, Happy 45 (253 songs)

## v0.8 – Safety & release
- **No Robux donations** (donate scripts removed)
- **No teleport** to other games; server switch locked on the Kid Server
- Loading screen: loading → **tap to continue** → straight into the campus
- Content maturity rating: **Minimal** (open to Roblox Kids accounts, ages 5–8)
- New icon and thumbnail with an original teddy-bear design
- Source code moved to this repository; backups, Studio scratch copies and the school seal data are not included
