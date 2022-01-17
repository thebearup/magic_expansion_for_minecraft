execute @e[family=npc,c=1] ~ ~ ~ msg @p[lm=0,l=15] Insufficient experience for enchantment
enchant @s[lm=16] aqua_affinity 1
enchant @s[lm=16] respiration 2
enchant @s[lm=16] feather_falling 3
enchant @s[lm=16] depth_strider 2
enchant @s[lm=16] thorns 2
enchant @s[lm=16] mending 1
playsound beacon.power @s[lm=16]
execute @s[lm=16] ~ ~2 ~ particle minecraft:critical_hit_emitter ^ ^ ^1
xp -16L @s[lm=16]

