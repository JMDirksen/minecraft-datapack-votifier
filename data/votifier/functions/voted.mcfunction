# Message chat
tellraw @a ["",{"text":"Thank you ","color":"green"},{"selector":"@a[scores={voted=1..}]","color":"gold"},{"text":" for voting!","color":"green"}]
schedule function votifier:message 30s

# Give reward/loot
execute as @a[scores={voted=1..}] run loot give @s loot votifier:voting

# Add votes with 1
scoreboard players add @a[scores={voted=1..}] votes 1
# Decrease voted with 1
scoreboard players remove @a[scores={voted=1..}] voted 1
