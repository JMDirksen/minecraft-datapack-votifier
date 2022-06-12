# Set check interval
schedule function votifier:check 5s

# Check if someone has voted
execute if entity @a[scores={voted=1..}] run function votifier:voted
