This is a simple add-on for Minecraft. It adds some magical elements to the game...
- Implemented
  - Flame wand: Causes `catch_fire` on hit.
  - Storm wand: Summons a `lightning_bolt` on hit.
  - Frost wand: Inflict `slow` effect on the target
    - Freezes water source blocks (but not flowing water, by design)
    - Turns lava into obsidian/cobblestone
    - Douses fire
    - Wanted to implement `freeze` but it's not a formal status effect :(
  - Dark wand: Causes `wither` effect on target.
  - Float wand: Target gains `levitation` for 10 seconds.
  - Resistance Potion: Grants `resistance` effect
  - Haste Potion: Grants `haste` effect
- Planned
  - Teleporters: Would like to use nametags to link two teleporters and/or teleport 1K blocks in a given direction based on block orientation.
  - Float Amulet: Grant levitate for N seconds and slow falling for N+3 seconds - so you can float and gracefully land
  - Teleport Amulet: Teleport N blocks in the direction facing

  ![Alt text](media/flame.png "Flame wand")
  ![Alt text](media/freeze.png "Frost wand")
  ![Alt text](media/lightning.png "Storm wand")
  ![Alt text](media/dark.png "Dark wand")
  ![Alt text](media/float.png "Float wand")
  
