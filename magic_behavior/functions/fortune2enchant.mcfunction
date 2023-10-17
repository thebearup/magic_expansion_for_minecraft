execute as @e[family=npc,c=1] run msg @p[lm=0,l=3,c=1,r=3] Insufficient experience for enchantment
enchant @s[lm=4] fortune 2
playsound beacon.power @s[lm=4]
execute as @s[lm=4] run particle minecraft:critical_hit_emitter ^ ^ ^1
xp -4L @s[lm=4]