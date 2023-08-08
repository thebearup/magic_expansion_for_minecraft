# Grant invisibility if amulet worn in off hand
effect @a[hasitem={item=magic:invisibility_amulet,location=slot.weapon.offhand}] invisibility 1 0 true

# Grant slow falling if worn in main/off hand
effect @a[hasitem={item=magic:float_amulet,location=slot.weapon.offhand}] slow_falling 1 0 true
effect @a[hasitem={item=magic:float_amulet_2,location=slot.weapon.offhand}] slow_falling 1 0 true
effect @a[hasitem={item=magic:float_amulet_2,location=slot.weapon.mainhand}] slow_falling 3 0 true

# Grant fire resistance if worn in off hand
effect @a[hasitem={item=magic:fire_resistance_amulet,location=slot.weapon.offhand}] fire_resistance 1 0 true

# Grant haste and immunity to mining fatigue if worn in off hand
effect @a[hasitem={item=magic:haste_amulet,location=slot.weapon.offhand}] mining_fatigue 0 0 true
effect @a[hasitem={item=magic:haste_amulet,location=slot.weapon.offhand}] haste 1 0 true

# Grant Fire Resistance AND haste if wearing mining armor
effect @a[hasitem={item=magic:mining_chest,location=slot.armor.chest}] fire_resistance 11 0 true
effect @a[hasitem={item=magic:mining_chest,location=slot.armor.chest}] mining_fatigue 0 0 true
effect @a[hasitem={item=magic:mining_chest,location=slot.armor.chest}] haste 11 1 true