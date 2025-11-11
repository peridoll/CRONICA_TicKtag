# =================================================================================================

# 初回スタック進行
execute as @a[scores={SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime.Stack matches 0 run function cronica_dev:player/status/common_lib/ct/progress {MasterID: "brave", MasterType: "select", ItemID: "fairy_bottle"}

# スコア管理
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime=0..},tag=!TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime 1
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime=0..},tag=!TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime.Stack 1

# スタック進行
execute as @a[scores={SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime.Stack >= @s SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime.Stack.Goal at @s run function cronica_dev:player/status/common_lib/ct/progress {MasterID: "brave", MasterType: "select", ItemID: "fairy_bottle"}

# チャージ完了
execute as @a[scores={SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime >= @s SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime.Goal at @s run function cronica_dev:player/status/common_lib/ct/finish {MasterID: "brave", MasterType: "select", ItemID: "fairy_bottle"}

# ループ処理
execute if entity @a[scores={SCORE.cronica_dev.TIMER.fairy_bottle.CoolTime=0..}] run schedule function cronica_dev:player/character/brave/select/fairy_bottle/library/ct 1t
# =================================================================================================
