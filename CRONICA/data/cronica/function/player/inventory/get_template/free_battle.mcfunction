# 持ち物を全消し
clear @s

# オペレーターアイテム
execute as @s[name="toto_tox2"] run loot replace entity @s container.34 loot lib:teleport
execute as @s[name="toto_tox2"] run loot replace entity @s container.35 loot lib:switch_gamemode

# チームアイテム
# function cronica:player/status/inventory/library/get_team

# キャラクターアイテム
# function cronica:player/status/inventory/library/get_character
# function cronica:player/status/inventory/library/get_skill