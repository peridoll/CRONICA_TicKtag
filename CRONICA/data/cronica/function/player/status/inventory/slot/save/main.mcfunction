# =================================================================================================
#
# CRONICA - SLOT SAVE
#
# run
# └─ main
#
# =================================================================================================

##【 REPEAT 】

  # スコアをストレージに保存
    execute store result storage cronica:temp SavingSlot.Slot int 1 run scoreboard players get @s SCORE.cronica.STATUS.SavingSlot

  # 探索と保存
    function cronica:player/status/inventory/slot/save/main_lib_check with storage cronica:temp SavingSlot

  # 探索終了
    execute if score @s SCORE.cronica.STATUS.SavingSlot matches 36.. run scoreboard players reset @s SCORE.cronica.STATUS.SavingSlot
    execute unless entity @a[scores = {SCORE.cronica.STATUS.SavingSlot = 0..}] run scoreboard objectives remove SCORE.cronica.STATUS.SavingSlot

  # 次のスロットへ
    execute if score @s SCORE.cronica.STATUS.SavingSlot matches 0..35 run scoreboard players add @s SCORE.cronica.STATUS.SavingSlot 1
    execute if score @s SCORE.cronica.STATUS.SavingSlot matches 0..35 run function cronica:player/status/inventory/slot/save/main
# =================================================================================================
# ver 0.10.3
