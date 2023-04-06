scoreboard objectives add spellsword dummy
scoreboard players set @a spellsword 0
scoreboard players add @a[hasitem={item=magic:spellsword_helmet,location=slot.armor.head}] spellsword 1
scoreboard players add @a[hasitem={item=magic:spellsword_chest,location=slot.armor.chest}] spellsword 1
scoreboard players add @a[hasitem={item=magic:spellsword_leggings,location=slot.armor.legs}] spellsword 1
scoreboard players add @a[hasitem={item=magic:spellsword_boots,location=slot.armor.feet}] spellsword 1

effect @a[hasitem={item=magic:spellsword_helmet,location=slot.armor.head}] saturation 11 0 true
effect @a[hasitem={item=magic:spellsword_chest,location=slot.armor.chest}] health_boost 11 2 true
effect @a[hasitem={item=magic:spellsword_leggings,location=slot.armor.legs}] speed 11 1 true
effect @a[hasitem={item=magic:spellsword_boots,location=slot.armor.feet}] jump_boost 11 1 true

effect @a[hasitem={item=magic:spellsword_helmet,location=slot.armor.head}] hunger 0 0 true
effect @a[hasitem={item=magic:spellsword_leggings,location=slot.armor.legs}] slowness 0 0 true

effect @a[scores={spellsword=3}] strength 11 1 true
effect @a[scores={spellsword=3}] weakness 0 0 true
effect @a[scores={spellsword=4}] strength 11 1 true
effect @a[scores={spellsword=4}] weakness 0 0 true