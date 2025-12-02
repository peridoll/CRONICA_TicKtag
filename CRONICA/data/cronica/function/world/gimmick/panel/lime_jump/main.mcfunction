# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # スコア管理
      scoreboard players add @e[scores = {SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime = 0..}] SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime 1

  ## 後続処理呼び出し

    # 終了
      execute as @e[scores = {SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime = 10..}] at @s run \
        function cronica:world/gimmick/panel/lime_jump/finish

    # ループ処理
      execute if entity @a[scores = {SCORE.cronica.WORLD.Gimmick.Panel.lime_jump.ActivateTime = 0..}] run \
        schedule function cronica:world/gimmick/panel/lime_jump/main 1t
# =================================================================================================
# ver 0.13.0
