# Reward table
# 20% 64 apple
# 20% 10 cooked_beef
# 20% 10 purple_wool
# 15% 10 leather
# 10% 10 dark_oak_sapling
#  5% 64 experience_bottle
#  4% 1 diamond_block
#  3% 1 emerald_block
#  2% 1 enchanted_book{StoredEnchantments:[{id:mending,lvl:1s}]}
#  1% 1 totem_of_undying

# Generate a random number
scoreboard players set $max random 100
function votifier:random
tellraw @a ["",{"text":"Thank you ","color":"green"},{"selector":"@a[scores={voted=1..}]","color":"gold"},{"text":" for voting!","color":"green"}]

# Give random item - 20% apple 10
execute if score $random random matches 1..20 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"1 stack of appels","color":"yellow"},{"text":" (20% chance)","color":"gray"}]
execute if score $random random matches 1..20 run give @a[scores={voted=1..}] apple 64
# Give random item - 20% cooked_beef 10
execute if score $random random matches 21..40 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"10 steaks","color":"yellow"},{"text":" (20% chance)","color":"gray"}]
execute if score $random random matches 21..40 run give @a[scores={voted=1..}] cooked_beef 10
# Give random item - 20% purple_wool 10
execute if score $random random matches 41..60 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"10 purple wool","color":"yellow"},{"text":" (20% chance)","color":"gray"}]
execute if score $random random matches 41..60 run give @a[scores={voted=1..}] purple_wool 10
# Give random item - 15% leather 10
execute if score $random random matches 61..75 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"10 leather","color":"yellow"},{"text":" (15% chance)","color":"gray"}]
execute if score $random random matches 61..75 run give @a[scores={voted=1..}] leather 10
# Give random item - 10% dark_oak_sapling 10
execute if score $random random matches 76..85 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"10 dark oak sapplings","color":"yellow"},{"text":" (10% chance)","color":"gray"}]
execute if score $random random matches 76..85 run give @a[scores={voted=1..}] dark_oak_sapling 10
# Give random item - 5% experience_bottle 64
execute if score $random random matches 86..90 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"1 stack of experience bottles","color":"yellow"},{"text":" (5% chance)","color":"gray"}]
execute if score $random random matches 86..90 run give @a[scores={voted=1..}] experience_bottle 64
# Give random item - 4% diamond_block 1
execute if score $random random matches 91..94 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"1 block of diamond","color":"yellow"},{"text":" (4% chance)","color":"gray"}]
execute if score $random random matches 91..94 run give @a[scores={voted=1..}] diamond_block 1
# Give random item - 3% emerald_block 1
execute if score $random random matches 95..97 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"1 block of emerald","color":"yellow"},{"text":" (3% chance)","color":"gray"}]
execute if score $random random matches 95..97 run give @a[scores={voted=1..}] emerald_block 1
# Give random item - 2% enchanted_book{StoredEnchantments:[{id:mending,lvl:1s}]} 1
execute if score $random random matches 98..99 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"1 enchanted book of mending","color":"yellow"},{"text":" (2% chance)","color":"gray"}]
execute if score $random random matches 98..99 run give @a[scores={voted=1..}] enchanted_book{StoredEnchantments:[{id:"mending",lvl:1s}]} 1
# Give random item - 1% totem_of_undying 1
execute if score $random random matches 100 run tellraw @a ["",{"selector":"@a","color":"gold"},{"text":" got: ","color":"green"},{"text":"1 totem of undying","color":"yellow"},{"text":" (1% chance)","color":"gray"}]
execute if score $random random matches 100 run give @a[scores={voted=1..}] totem_of_undying 1

# Add votes with 1
scoreboard players add @a[scores={voted=1..}] votes 1
# Decrease voted with 1
scoreboard players remove @a[scores={voted=1..}] voted 1
