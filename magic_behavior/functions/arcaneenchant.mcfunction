execute as @e[family=npc,c=1] run msg @p[lm=0,l=15,c=1,r=3] Insufficient experience for enchantment
enchant @s[lm=16] aqua_affinity 1
enchant @s[lm=16] respiration 3
enchant @s[lm=16] feather_falling 4
enchant @s[lm=16] depth_strider 3
enchant @s[lm=16] thorns 3
enchant @s[lm=16] mending 1
playsound beacon.power @s[lm=16]
execute as @s[lm=16] run particle minecraft:critical_hit_emitter ^ ^ ^1
xp -16L @s[lm=16]

