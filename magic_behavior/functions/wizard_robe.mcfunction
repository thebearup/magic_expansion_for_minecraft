# Add up the number of wizard armor pieces for each player
scoreboard objectives add wizard dummy
scoreboard players set @a wizard 0
scoreboard players add @a[hasitem={item=magic:wizard_helmet,location=slot.armor.head}] wizard 1
scoreboard players add @a[hasitem={item=magic:wizard_chest,location=slot.armor.chest}] wizard 1
scoreboard players add @a[hasitem={item=magic:wizard_leggings,location=slot.armor.legs}] wizard 1
scoreboard players add @a[hasitem={item=magic:wizard_boots,location=slot.armor.feet}] wizard 1

# Grant bonuses based on equipped armor
effect @a[hasitem={item=magic:wizard_helmet,location=slot.armor.head}] conduit_power 11 0 true
effect @a[hasitem={item=magic:wizard_chest,location=slot.armor.chest}] resistance 11 1 true
effect @a[hasitem={item=magic:wizard_leggings,location=slot.armor.legs}] slow_falling 11 0 true
effect @a[hasitem={item=magic:wizard_boots,location=slot.armor.feet}] speed 11 0 true

# Also grant immunity in some cases
effect @a[hasitem={item=magic:wizard_helmet,location=slot.armor.head}] darkness 0 0 true
effect @a[hasitem={item=magic:wizard_chest,location=slot.armor.chest}] poison 0 0 true
effect @a[hasitem={item=magic:wizard_boots,location=slot.armor.feet}] slowness 0 0 true

# Grant additional bonuses/immunity if 3 or more pieces equipped
effect @a[scores={wizard=3}] wither 0 0 true
effect @a[scores={wizard=4}] wither 0 0 true
