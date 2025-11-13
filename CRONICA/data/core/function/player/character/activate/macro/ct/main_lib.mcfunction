# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # スコア管理

      # 初回スタック進行
        $execute \
            as @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0..}] \
            if score @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack matches 0 \
          run \
            function core:player/character/activate/macro/ct/progress with storage cronica:temp CoolTimeMain

      # クールタイム進行
        $scoreboard players add @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0..}, tag =! TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.$(ItemID).CoolTime 1
        $scoreboard players add @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0..}, tag =! TAG.cronica.GAMING.Inactive] SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack 1

  ## 後続処理呼び出し

    # スタック進行
      $execute \
          as @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0..}] \
          if score @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack >= @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Stack.Goal at @s \
        run \
          function core:player/character/activate/macro/ct/progress with storage cronica:temp CoolTimeMain

    # チャージ完了
      $execute \
          as @a[scores = {SCORE.cronica.TIMER.$(ItemID).CoolTime = 0..}] \
          if score @s SCORE.cronica.TIMER.$(ItemID).CoolTime >= @s SCORE.cronica.TIMER.$(ItemID).CoolTime.Goal at @s \
        run \
          function core:player/character/activate/macro/ct/finish with storage cronica:temp CoolTimeMain
# =================================================================================================
# ver 0.12.0
