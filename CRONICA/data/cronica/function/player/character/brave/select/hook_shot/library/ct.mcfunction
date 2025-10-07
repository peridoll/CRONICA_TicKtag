# =================================================================================================

# 初回スタック進行
execute as @a[scores={SCORE.cronica.TIMER.hook_shot.CoolTime=0..}] if score @s SCORE.cronica.TIMER.hook_shot.CoolTime.Stack matches 0 run function cronica:player/status/common_lib/ct/progress {MasterID: "brave", MasterType: "select", ItemID: "hook_shot"}

# スコア管理
scoreboard players add @a[scores={SCORE.cronica.TIMER.hook_shot.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.hook_shot.CoolTime 1
scoreboard players add @a[scores={SCORE.cronica.TIMER.hook_shot.CoolTime=0..},tag=!TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.hook_shot.CoolTime.Stack 1

# スタック進行
execute as @a[scores={SCORE.cronica.TIMER.hook_shot.CoolTime=0..}] if score @s SCORE.cronica.TIMER.hook_shot.CoolTime.Stack >= @s SCORE.cronica.TIMER.hook_shot.CoolTime.Stack.Goal at @s run function cronica:player/status/common_lib/ct/progress {MasterID: "brave", MasterType: "select", ItemID: "hook_shot"}

# チャージ完了
execute as @a[scores={SCORE.cronica.TIMER.hook_shot.CoolTime=0..}] if score @s SCORE.cronica.TIMER.hook_shot.CoolTime >= @s SCORE.cronica.TIMER.hook_shot.CoolTime.Goal at @s run function cronica:player/status/common_lib/ct/finish {MasterID: "brave", MasterType: "select", ItemID: "hook_shot"}

# ループ処理
execute if entity @a[scores={SCORE.cronica.TIMER.hook_shot.CoolTime=0..}] run schedule function cronica:player/character/brave/select/hook_shot/library/ct 1t
# =================================================================================================
