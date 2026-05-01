# Frogger 2D — Godot Learning Demo

A simple 2D Frogger-style game built with **Godot 4.6** as a personal learning project.  
This is a student demo made while exploring Godot's 2D game development features — nothing fancy, just a fun exercise.

Feel free to use, fork, or modify it however you like.

---

## Gameplay

Guide the frog across a busy road without getting hit by cars.  
Your score is the time (in seconds) it takes to reach the finish line — **lower is better**.  
The best score is saved and displayed on the title screen.

## Controls

| Key | Action |
|-----|--------|
| W / A / S / D | Move up / left / down / right |
| Space | Confirm (on title screen) |

## Project Structure

```
frogger/
├── Scenes/          # All .tscn scenes and .gd scripts
│   ├── Title.tscn       — title / score screen
│   ├── main_stage.tscn  — main gameplay stage
│   ├── player.tscn      — player character
│   ├── car.tscn         — car obstacle
│   └── global_score.tscn — autoload for best-score persistence
├── graphics/        # Sprites (Kenney asset pack)
├── audio/           # Background music & SFX
├── fonts/           # Custom pixel fonts
└── project.godot
```

## Built With

- [Godot Engine 4.6](https://godotengine.org/)
- GDScript

## Asset Credits

| Asset | Author | License |
|-------|--------|---------|
| Art — Roguelike Modern City | [Kenney](https://kenney.nl/assets/roguelike-modern-city) | CC0 |
| Music — City on Speed | Section 31 via [OpenGameArt](https://opengameart.org/content/city-on-speed) | CC-BY 3.0 |
| Font — Better VCR | artdzyk via [DaFont](https://www.dafont.com/better-vcr.font) | Freeware |
| Font — Crackman | Typomodernic via [DaFont](https://www.dafont.com/crackman.font) | Freeware |

## License

This project is open source. Do whatever you want with it — learn from it, remix it, ship it.  
No attribution required, though it's always appreciated.
