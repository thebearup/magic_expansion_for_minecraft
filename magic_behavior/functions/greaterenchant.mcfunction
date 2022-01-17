execute @e[family=npc,c=1] ~ ~ ~ msg @p[lm=0,l=7] Insufficient experience for enchantment
enchant @s[lm=8] protection 3
enchant @s[lm=8] sharpness 3
enchant @s[lm=8] looting 2
enchant @s[lm=8] unbreaking 2
enchant @s[lm=8] efficiency 3
playsound beacon.power @s[lm=8]
execute @s[lm=8] ~ ~2 ~ particle minecraft:critical_hit_emitter ^ ^ ^1
xp -8L @s[lm=8]