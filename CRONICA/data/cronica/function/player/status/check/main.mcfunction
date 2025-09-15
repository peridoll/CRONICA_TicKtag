
## 使用検知
execute as @a[tag=TAG.cronica.GAMING] run function cronica:player/status/check/boot/using/main

# ニンジン付きの棒
# execute unless entity @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] unless entity @a[scores={SCORE.cronica.ACTIVATE.carrot_on_a_stick=1..}] run scoreboard objectives remove SCORE.cronica.ACTIVATE.carrot_on_a_stick
# execute if entity @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run scoreboard objectives add SCORE.cronica.ACTIVATE.carrot_on_a_stick minecraft.used:minecraft.carrot_on_a_stick
# execute as @a[tag=TAG.cronica.GAMING,scores={SCORE.cronica.ACTIVATE.carrot_on_a_stick=1..}] run function cronica:player/status/check/boot/carrot_on_a_stick

# 歪んだキノコ付きの棒
# execute unless entity @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick"}]}] unless entity @a[scores={SCORE.cronica.ACTIVATE.warped_fungus_on_a_stick=1..}] run scoreboard objectives remove SCORE.cronica.ACTIVATE.warped_fungus_on_a_stick
# execute if entity @a[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick"}]}] run scoreboard objectives add SCORE.cronica.ACTIVATE.warped_fungus_on_a_stick minecraft.used:minecraft.warped_fungus_on_a_stick
# execute as @a[tag=TAG.cronica.GAMING,scores={SCORE.cronica.ACTIVATE.warped_fungus_on_a_stick=1..}] run function cronica:player/status/check/boot/warped_fungus_on_a_stick

# 弓
# execute unless entity @a[nbt={Inventory:[{id:"minecraft:bow"}]}] unless entity @a[scores={SCORE.cronica.ACTIVATE.bow=1..}] run scoreboard objectives remove SCORE.cronica.ACTIVATE.bow
# execute if entity @a[nbt={Inventory:[{id:"minecraft:bow"}]}] run scoreboard objectives add SCORE.cronica.ACTIVATE.bow minecraft.used:minecraft.bow
# execute as @a[tag=TAG.cronica.GAMING,scores={SCORE.cronica.ACTIVATE.bow=1..}] run function cronica:player/status/check/boot/bow/shoot

# クロスボウ
# execute unless entity @a[nbt={Inventory:[{id:"minecraft:crossbow"}]}] unless entity @a[scores={SCORE.cronica.ACTIVATE.crossbow=1..}] run scoreboard objectives remove SCORE.cronica.ACTIVATE.crossbow
# execute if entity @a[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run scoreboard objectives add SCORE.cronica.ACTIVATE.crossbow minecraft.used:minecraft.crossbow
# execute as @a[tag=TAG.cronica.GAMING,scores={SCORE.cronica.ACTIVATE.crossbow=1..}] run function cronica:player/status/check/boot/crossbow/shoot

# 槍
# execute unless entity @a[nbt={Inventory:[{id:"minecraft:trident"}]}] unless entity @a[scores={SCORE.cronica.ACTIVATE.trident=1..}] run scoreboard objectives remove SCORE.cronica.ACTIVATE.trident
# execute if entity @a[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard objectives add SCORE.cronica.ACTIVATE.trident minecraft.used:minecraft.trident
# execute as @a[tag=TAG.cronica.GAMING,scores={SCORE.cronica.ACTIVATE.trident=1..}] run function cronica:player/status/check/boot/trident/shoot

# 盾
# execute unless entity @a[nbt={Inventory:[{id:"minecraft:shield"}]}] unless entity @a[scores={SCORE.cronica.ACTIVATE.shield=1..}] run scoreboard objectives remove SCORE.cronica.ACTIVATE.shield
# execute if entity @a[nbt={Inventory:[{id:"minecraft:shield"}]}] run scoreboard objectives add SCORE.cronica.ACTIVATE.shield minecraft.used:minecraft.shield
# execute as @a[tag=TAG.cronica.GAMING,scores={SCORE.cronica.ACTIVATE.shield=1..}] run function cronica:player/status/check/boot/shield/block

## 行動判定

# スニーク判定
tag @a[tag=TAG.cronica.SNEAKING] remove TAG.cronica.SNEAKING
execute unless entity @a[scores={SCORE.cronica.STATUS.Sneak=1..}] run scoreboard objectives remove SCORE.cronica.STATUS.Sneak
execute as @a[tag=TAG.cronica.GAMING] if predicate cronica:sneak run function cronica:player/status/check/boot/sneak

# チャージ
# tag @a[tag=TAG.cronica.CHARGING] remove TAG.cronica.CHARGING
# tag @a[tag=TAG.cronica.CHARGING.bow] remove TAG.cronica.CHARGING.bow
# tag @a[tag=TAG.cronica.CHARGING.crossbow] remove TAG.cronica.CHARGING.crossbow
# tag @a[tag=TAG.cronica.CHARGING.trident] remove TAG.cronica.CHARGING.trident
# tag @a[tag=TAG.cronica.CHARGING.shield] remove TAG.cronica.CHARGING.shield
# tag @a[tag=TAG.cronica.CHARGING.spyglass] remove TAG.cronica.CHARGING.spyglass

## スキル
# execute as @a[nbt={Inventory:[{tag:{ItemCategory:PrimaryWeapon,ItemName:SwordOfMaterial}}]}] run function cronica:player/character/steve/library/field