execute as @e[family=npc,c=1] run msg @p[lm=0,l=7,c=1,r=3] Insufficient experience for enchantment
enchant @s[lm=8] protection 4
enchant @s[lm=8] sharpness 4
enchant @s[lm=8] looting 3
enchant @s[lm=8] unbreaking 3
enchant @s[lm=8] efficiency 4
playsound beacon.power @s[lm=8]
execute as @s[lm=8] run particle minecraft:critical_hit_emitter ^ ^ ^1
xp -8L @s[lm=8]