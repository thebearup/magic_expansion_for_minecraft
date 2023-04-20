# Add up the number of spellsword armor pieces for each player
scoreboard objectives add spellsword dummy
scoreboard players set @a spellsword 0
scoreboard players add @a[hasitem={item=magic:spellsword_helmet,location=slot.armor.head}] spellsword 1
scoreboard players add @a[hasitem={item=magic:spellsword_chest,location=slot.armor.chest}] spellsword 1
scoreboard players add @a[hasitem={item=magic:spellsword_leggings,location=slot.armor.legs}] spellsword 1
scoreboard players add @a[hasitem={item=magic:spellsword_boots,location=slot.armor.feet}] spellsword 1

# Grant saturation every N seconds
scoreboard objectives add spellsword_helmet dummy
scoreboard players add @a[hasitem={item=magic:spellsword_helmet,location=slot.armor.head}] spellsword_helmet 1

# Grant bonuses based on equipped armor
effect @a[scores={spellsword_helmet=200}] saturation 0 0 true
effect @a[hasitem={item=magic:spellsword_chest,location=slot.armor.chest}] health_boost 11 2 true
effect @a[hasitem={item=magic:spellsword_leggings,location=slot.armor.legs}] speed 11 1 true
effect @a[hasitem={item=magic:spellsword_boots,location=slot.armor.feet}] jump_boost 11 1 true

# Also grant immunity in some cases
effect @a[hasitem={item=magic:spellsword_helmet,location=slot.armor.head}] hunger 0 0 true
effect @a[hasitem={item=magic:spellsword_leggings,location=slot.armor.legs}] slowness 0 0 true

# Grant additional bonuses/immunity if 3 or more pieces equipped
effect @a[scores={spellsword=3}] strength 11 1 true
effect @a[scores={spellsword=3}] weakness 0 0 true
effect @a[scores={spellsword=4}] strength 11 1 true
effect @a[scores={spellsword=4}] weakness 0 0 true

# Reset counter for spellsword_helmet
scoreboard players set @a[scores={spellsword_helmet=200..}] spellsword_helmet 0