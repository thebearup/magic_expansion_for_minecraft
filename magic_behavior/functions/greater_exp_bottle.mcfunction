execute @e[family=npc,c=1] ~ ~ ~ msg @p[lm=0,l=19,c=1,r=3] Insufficient experience for XP Bottle
give @s[lm=20] magic:greater_exp_bottle
playsound beacon.power @s[lm=20]
execute @s[lm=20] ~ ~2 ~ particle minecraft:critical_hit_emitter ^ ^ ^1
xp -20L @s[lm=20]