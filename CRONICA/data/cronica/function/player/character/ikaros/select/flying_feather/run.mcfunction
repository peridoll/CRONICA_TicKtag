# =================================================================================================

##【 IMPULSE 】

  ## 後続処理呼び出し

    # 共通処理呼び出し
      function core:player/character/activate/macro/run { ItemID : "flying_feather" }

    # メイン処理呼び出し
      schedule function cronica:player/character/ikaros/select/flying_feather/library/main 1t

  ## データ管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.TIMER.flying_feather.ActivateTime dummy
      scoreboard players set @s SCORE.cronica.TIMER.flying_feather.ActivateTime 0

  ## 実行処理

    # ゲームモード
      tag @s[gamemode = creative] add TAG.cronica.SKILL.flying_feather.RunCreative
      gamemode adventure @s[tag = TAG.cronica.SKILL.flying_feather.RunCreative]

    # エフェクト
      effect give @s minecraft:levitation 1 25 true
      effect give @s minecraft:slow_falling infinite 0 true

    # ゲームモード
      gamemode creative @s[tag = TAG.cronica.SKILL.flying_feather.RunCreative]
      tag @s[tag = TAG.cronica.SKILL.flying_feather.RunCreative] remove TAG.cronica.SKILL.flying_feather.RunCreative

  ## 装飾

    # パーティクル
      particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

    # サウンド
      playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
      playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
# ver 0.12.0
