execute @e[family=npc,c=1] ~ ~ ~ msg @p[lm=0,l=1] Insufficient experience for enchantment
enchant @s[lm=2] silk_touch 1
playsound beacon.power @s[lm=2]
execute @s[lm=2] ~ ~2 ~ particle minecraft:critical_hit_emitter ^ ^ ^1
xp -2L @s[lm=2]