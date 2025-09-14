# 持ち物を全消し
clear @s

# オペレーターアイテム
execute if score @s SCORE.cronica.PersonalNumber matches 1000.. run loot replace entity @s container.7 loot lib:teleport
execute if score @s SCORE.cronica.PersonalNumber matches 1000.. run loot replace entity @s container.8 loot lib:switch_gamemode

# チームアイテム
# function cronica:player/status/inventory/library/get_team