# =================================================================================================

# 初回スタック進行
execute as @a[scores={SCORE.cronica_dev.TIMER.judgment_stone.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.judgment_stone.CoolTime.Stack matches 0 run function cronica_dev:player/status/common_lib/ct/progress {MasterID: "ikaros", MasterType: "select", ItemID: "judgment_stone"}

# スコア管理
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.judgment_stone.CoolTime=0..},tag=!TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.judgment_stone.CoolTime 1
scoreboard players add @a[scores={SCORE.cronica_dev.TIMER.judgment_stone.CoolTime=0..},tag=!TAG.cronica_dev.GAMING.Inactive] SCORE.cronica_dev.TIMER.judgment_stone.CoolTime.Stack 1

# スタック進行
execute as @a[scores={SCORE.cronica_dev.TIMER.judgment_stone.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.judgment_stone.CoolTime.Stack >= @s SCORE.cronica_dev.TIMER.judgment_stone.CoolTime.Stack.Goal at @s run function cronica_dev:player/status/common_lib/ct/progress {MasterID: "ikaros", MasterType: "select", ItemID: "judgment_stone"}

# チャージ完了
execute as @a[scores={SCORE.cronica_dev.TIMER.judgment_stone.CoolTime=0..}] if score @s SCORE.cronica_dev.TIMER.judgment_stone.CoolTime >= @s SCORE.cronica_dev.TIMER.judgment_stone.CoolTime.Goal at @s run function cronica_dev:player/status/common_lib/ct/finish {MasterID: "ikaros", MasterType: "select", ItemID: "judgment_stone"}

# ループ処理
execute if entity @a[scores={SCORE.cronica_dev.TIMER.judgment_stone.CoolTime=0..}] run schedule function cronica_dev:player/character/ikaros/select/judgment_stone/library/ct 1t
# =================================================================================================
