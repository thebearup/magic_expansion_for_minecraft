execute as @e[family=npc,c=1] run msg @p[lm=0,l=7,c=1,r=3] Insufficient experience for XP Bottle
give @s[lm=8] magic:lesser_exp_bottle
playsound beacon.power @s[lm=8]
execute as @s[lm=8] run particle minecraft:critical_hit_emitter ^ ^ ^1
xp -8L @s[lm=8]