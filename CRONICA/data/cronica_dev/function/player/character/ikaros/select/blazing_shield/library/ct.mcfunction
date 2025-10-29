# =================================================================================================

# 初回スタック進行
execute as @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.blazing_shield.CoolTime.Stack matches 0 run function cronica_dev:player/status/common_lib/ct/progress {MasterID: "ikaros", MasterType: "select", ItemID: "blazing_shield"}

# スコア管理
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.CoolTime=0..},tag=!TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.blazing_shield.CoolTime 1
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.CoolTime=0..},tag=!TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.blazing_shield.CoolTime.Stack 1

# スタック進行
execute as @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.blazing_shield.CoolTime.Stack >= @s SCORE.cronica_dev.TIMER.blazing_shield.CoolTime.Stack.Goal at @s run function cronica_dev:player/status/common_lib/ct/progress {MasterID: "ikaros", MasterType: "select", ItemID: "blazing_shield"}

# チャージ完了
execute as @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.blazing_shield.CoolTime >= @s SCORE.cronica_dev.TIMER.blazing_shield.CoolTime.Goal at @s run function cronica_dev:player/status/common_lib/ct/finish {MasterID: "ikaros", MasterType: "select", ItemID: "blazing_shield"}

# ループ処理
execute if entity @a[scores={SCORE.cronica_dev.TIMER.blazing_shield.CoolTime=0..}] run schedule function cronica_dev:player/character/ikaros/select/blazing_shield/library/ct 1t
# =================================================================================================
