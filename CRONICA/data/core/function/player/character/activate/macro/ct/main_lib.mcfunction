 # =================================================================================================

##【 REPEAT 】

  ## データ管理

    # スコア管理

      # 初回スタック進行
        $execute \
            as @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = -1..}] \
            if score @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime matches 1 \
          run \
            function core:player/character/activate/macro/ct/progress with storage cronica:temp CoolTimeMain

      # クールタイム進行
        $scoreboard players add @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = -1..}, tag =! TAG.cronica.GAMING.Inactive] SCORE.cronica.CHARACTER.$(ItemID).CoolTime 1
        $scoreboard players add @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = -1..}, tag =! TAG.cronica.GAMING.Inactive] SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack 1

  ## 後続処理呼び出し

    # スタック進行
      $execute \
          as @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = 1..}] \
          if score @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack >= @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Stack.Goal at @s \
        run \
          function core:player/character/activate/macro/ct/progress with storage cronica:temp CoolTimeMain

    # チャージ完了
      $execute \
          as @a[scores = {SCORE.cronica.CHARACTER.$(ItemID).CoolTime = 1..}] \
          if score @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime >= @s SCORE.cronica.CHARACTER.$(ItemID).CoolTime.Goal at @s \
        run \
          function core:player/character/activate/macro/ct/finish with storage cronica:temp CoolTimeMain
# =================================================================================================
# ver 0.12.0
