# =================================================================================================

##【 IMPULSE 】

  ## 関数呼び出し

    # 共通処理
      function core:player/character/activate/macro/run { ItemID : "flying_feather" }

    # メイン処理予約
      schedule function cronica:player/character/ikaros/select/flying_feather/library/main 1t

  ## データ管理

    # スコア管理
      scoreboard objectives add SCORE.cronica.SKILL.flying_feather.ActivateTime dummy
      scoreboard players set @s SCORE.cronica.SKILL.flying_feather.ActivateTime 0

    # タグ管理
      tag @s add TAG.cronica.STATUS.ItemUsing.Activated

  ## 実行処理

    # ▼ : ゲームモード管理
      tag @s[gamemode = creative] add TAG.cronica.SKILL.flying_feather.RunCreative
      gamemode adventure @s[tag = TAG.cronica.SKILL.flying_feather.RunCreative]

    # エフェクト付与
      effect give @s minecraft:levitation 1 25 true

    # ▲ : ゲームモード管理
      gamemode creative @s[tag = TAG.cronica.SKILL.flying_feather.RunCreative]
      tag @s[tag = TAG.cronica.SKILL.flying_feather.RunCreative] remove TAG.cronica.SKILL.flying_feather.RunCreative

  ## コネクト

    # アイテム所持確認
      function core:player/inventory/has_check/macro/has_check { ItemID : "wind_knowledge" }

    # エフェクト付与
      execute if entity @s[tag = TAG.cronica.INVENTORY.wind_knowledge.Has] run \
        function cronica:player/character/ikaros/select/flying_feather/library/connect/run

    # タグ消し
      tag @s remove TAG.cronica.INVENTORY.wind_knowledge.Has

  ## 装飾

    # パーティクル
      particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

    # サウンド
      playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
      playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
# ver 0.12.0
