effect @a[hasitem={item=lazy:bronze_helmet,location=slot.armor.head}] village_hero 12 0 true
effect @a[hasitem={item=lazy:bronze_chest,location=slot.armor.chest}] haste 12 0 true
effect @a[hasitem={item=lazy:bronze_chest,location=slot.armor.chest}] mining_fatigue 0 0 true
effect @a[hasitem={item=lazy:bronze_leggings,location=slot.armor.legs}] jump_boost 12 1 true
effect @a[hasitem={item=lazy:bronze_boots,location=slot.armor.feet}] slow_falling 12 0 true

scoreboard objectives add bronze dummy
scoreboard players set @a bronze 0
scoreboard players add @a[hasitem={item=lazy:bronze_helmet,location=slot.armor.head}] bronze 1
scoreboard players add @a[hasitem={item=lazy:bronze_chest,location=slot.armor.chest}] bronze 1
scoreboard players add @a[hasitem={item=lazy:bronze_leggings,location=slot.armor.legs}] bronze 1
scoreboard players add @a[hasitem={item=lazy:bronze_boots,location=slot.armor.feet}] bronze 1

effect @a[scores={bronze=3}] health_boost 11 0 true
effect @a[scores={bronze=4}] health_boost 11 0 true
