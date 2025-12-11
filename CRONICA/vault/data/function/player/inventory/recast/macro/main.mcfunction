# =================================================================================================

##【 REPEAT 】

  ## データ管理

    # ストレージ管理

      # キャラクター情報取得
        $function cronica:system/data/storage/character/macro/get { StorageName : "RecastMain", ItemID : "$(ItemID)" }

    # スコア管理

      # 初回スタック進行
        $execute \
            as @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0}] \
          run \
            function cronica:player/inventory/recast/macro/progress with storage cronica:temp RecastMain

      # クールタイム進行
        $scoreboard players add @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0..}, tag =! TAG.cronica.GAMING.Inactive] SCORE.cronica.SKILL.$(ItemID).RecastTime 1
        $scoreboard players add @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0..}, tag =! TAG.cronica.GAMING.Inactive] SCORE.cronica.SKILL.$(ItemID).Recast.Stack 1

  ## 後続処理呼び出し

    # スタック進行
      $execute \
          as @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0..}] \
          if score @s SCORE.cronica.SKILL.$(ItemID).Recast.Stack >= @s SCORE.cronica.SKILL.$(ItemID).Recast.Stack.Goal at @s \
        run \
          function cronica:player/inventory/recast/macro/progress with storage cronica:temp RecastMain

    # チャージ完了
      $execute \
          as @a[scores = {SCORE.cronica.SKILL.$(ItemID).RecastTime = 0..}] \
          if score @s SCORE.cronica.SKILL.$(ItemID).RecastTime >= @s SCORE.cronica.SKILL.$(ItemID).Recast.Goal at @s \
        run \
          function cronica:player/inventory/recast/macro/finish with storage cronica:temp RecastMain

  ## データ管理

    # ストレージ管理

      # ストレージ初期化
        data remove storage cronica:temp RecastMain
# =================================================================================================
# ver 0.13.0
