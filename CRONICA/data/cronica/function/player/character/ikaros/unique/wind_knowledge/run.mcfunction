# =================================================================================================

##【 IMPULSE 】

  ## 後続処理呼び出し

    # 共通処理呼び出し
      function core:player/character/activate/macro/run { ItemID : "wind_knowledge" }

    # メイン処理呼び出し
      schedule function cronica:player/character/ikaros/unique/wind_knowledge/library/main 1t

  ## データ管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.SKILL.wind_knowledge.ActivateTime dummy
      scoreboard players set @s SCORE.cronica.SKILL.wind_knowledge.ActivateTime 0
      scoreboard objectives add SCORE.cronica.CHARACTER.wind_knowledge.Activate.Goal dummy
      execute store result score @s SCORE.cronica.CHARACTER.wind_knowledge.Activate.Goal run \
        data get storage cronica:config wind_knowledge.CustomData.ActivateTime

  ## 実行処理

    # ゲームモード
      tag @s[gamemode = creative] add TAG.cronica.SKILL.wind_knowledge.RunCreative
      gamemode adventure @s[tag = TAG.cronica.SKILL.wind_knowledge.RunCreative]

    # エフェクト
      effect give @s minecraft:levitation 1 0 true

    # ゲームモード
      gamemode creative @s[tag = TAG.cronica.SKILL.wind_knowledge.RunCreative]
      tag @s[tag = TAG.cronica.SKILL.wind_knowledge.RunCreative] remove TAG.cronica.SKILL.wind_knowledge.RunCreative

  ## 装飾

    # パーティクル
      # particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

    # サウンド
      # playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
      # playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
# ver 0.12.0
