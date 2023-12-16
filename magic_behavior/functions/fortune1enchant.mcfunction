execute as @e[family=npc,c=1] run msg @p[lm=0,l=1,c=1,r=3] Insufficient experience for enchantment
enchant @s[lm=2] fortune 2
playsound beacon.power @s[lm=2]
execute as @s[lm=2] run particle minecraft:critical_hit_emitter ^ ^ ^1
xp -2L @s[lm=2]