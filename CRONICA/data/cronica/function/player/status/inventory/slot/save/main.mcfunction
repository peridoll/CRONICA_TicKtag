# =================================================================================================
#
# CRONICA - SLOT SAVE
#
# run
# └─ main
#
# =================================================================================================

##【 REPEAT 】

  # スコア設置
    scoreboard objectives add SCORE.cronica.STATUS.SavingSlot dummy
    scoreboard players add @s SCORE.cronica.STATUS.SavingSlot 0

  # スコアをストレージに保存
    execute store result storage cronica:temp SavingSlot.Slot int 1 run scoreboard players get @s SCORE.cronica.STATUS.SavingSlot

  # 探索と保存
    function cronica:player/status/inventory/slot/save/main_lib_check with storage cronica:temp SavingSlot

  # 探索終了
    execute if score @s SCORE.cronica.STATUS.SavingSlot matches 36 run scoreboard players reset @s SCORE.cronica.STATUS.SavingSlot
    execute unless entity @a[scores = {SCORE.cronica.STATUS.SavingSlot = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SavingSlot

  # 次のスロットへ
    execute if score @s SCORE.cronica.STATUS.SavingSlot matches 0..35 run scoreboard players add @s SCORE.cronica.STATUS.SavingSlot 1
    execute if score @s SCORE.cronica.STATUS.SavingSlot matches 0..35 run function cronica:player/status/inventory/slot/save/main
# =================================================================================================

# # オフハンド検知
# data modify storage cronica:temp SavingSlot.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemCategory
# $execute if data storage cronica:temp SavingSlot{Offhand: "$(ItemCategory)"} run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 106
# data remove storage cronica:temp SavingSlot.Offhand

# # インベントリ
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 0b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 0
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 1b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 1
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 2b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 2
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 3b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 3
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 4b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 4
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 5b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 5
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 6b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 6
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 7b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 7
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 8b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 8
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 9b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 9
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 10b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 10
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 11b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 11
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 12b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 12
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 13b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 13
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 14b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 14
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 15b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 15
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 16b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 16
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 17b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 17
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 18b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 18
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 19b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 19
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 20b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 20
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 21b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 21
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 22b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 22
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 23b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 23
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 24b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 24
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 25b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 25
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 26b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 26
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 27b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 27
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 28b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 28
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 29b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 29
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 30b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 30
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 31b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 31
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 32b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 32
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 33b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 33
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 34b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 34
# $execute if entity @s[nbt= {Inventory: [{components: {"minecraft:custom_data": {"ItemCategory": "$(ItemCategory)"}}, Slot: 35b}]}] run data modify storage cronica:personal/$(UUID)/inventory/slot $(ItemCategory) set value 35
# =================================================================================================
# ver 0.10.3
