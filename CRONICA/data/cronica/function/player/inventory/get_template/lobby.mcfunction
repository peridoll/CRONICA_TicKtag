# 持ち物を全消し
clear @s

# オペレーターアイテム
execute as @s[name="toto_tox2"] run loot replace entity @s container.7 loot lib:teleport
execute as @s[name="toto_tox2"] run loot replace entity @s container.8 loot lib:switch_gamemode
execute as @s[name="KiKi1224clover"] run loot replace entity @s container.7 loot lib:teleport
execute as @s[name="KiKi1224clover"] run loot replace entity @s container.8 loot lib:switch_gamemode

# チームアイテム
# function cronica:player/status/inventory/library/get_team