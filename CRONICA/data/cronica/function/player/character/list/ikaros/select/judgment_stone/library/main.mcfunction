# タイマー増加
scoreboard players add @e[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=0..}] SCORE.cronica.TIMER.JudgmentStone.ActivateTime 1

# # 限界高度到達
# # << 0.5秒経過で浮遊効果を解除し、落下軽減のみになる >>
# effect clear @a[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=10}] minecraft:levitation

# # 停止処理
# # << 天井にぶつかった場合 >>
# execute as @a[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=0..19}] at @s unless block ~ ~2.1 ~ #cronica:no_collision run function cronica:player/character/list/ikaros/select/judgment_stone/library/stop_ceiling
# # << スタン状態になった場合 >>
# execute as @a[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=0..},tag=TAG.cronica.STUNNING] run function cronica:player/character/list/ikaros/select/judgment_stone/library/stop_stun

# # 装飾
# # << 羽ばたき >>
# execute as @a[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=20}] at @s run function cronica:player/character/list/ikaros/select/judgment_stone/library/flaping
# execute as @a[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=25}] at @s run function cronica:player/character/list/ikaros/select/judgment_stone/library/flaping
# execute as @a[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=30}] at @s run function cronica:player/character/list/ikaros/select/judgment_stone/library/flaping

# # 実行終了
# # << 時間経過で終了 >>
# execute as @e[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=30..}] at @s run function cronica:player/character/list/ikaros/select/judgment_stone/library/finish

# ループ処理
# << 実行者が存在する場合、1tick後にメイン処理を実行 >>
execute if entity @e[scores={SCORE.cronica.TIMER.JudgmentStone.ActivateTime=0..}] run schedule function cronica:player/character/list/ikaros/select/judgment_stone/library/main 1t