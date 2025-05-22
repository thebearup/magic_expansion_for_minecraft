# "Kill" Zap projectiles before they get too far
scoreboard objectives add zap dummy
scoreboard players add @e[family=zap] zap 1
kill @e[scores={zap=10..}]
scoreboard players set @e[scores={zap=10..}] zap 0