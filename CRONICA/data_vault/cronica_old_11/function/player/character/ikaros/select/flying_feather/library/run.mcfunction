# =================================================================================================

##【 IMPULSE 】

  ## 共通機能

    # ライブラリ実行
      # function cronica:player/character/common/activate/macro/run \
        {\
          MasterID   : "ikaros", \
          MasterType : "select", \
          ItemID     : "flying_feather" \
        }

  ## 基本動作

    # ゲームモード
      tag @s[gamemode = creative] add TAG.cronica.SKILL.flying_feather.RunCreative
      gamemode adventure @s[tag = TAG.cronica.SKILL.flying_feather.RunCreative]

    # エフェクト
      effect give @s minecraft:levitation 1 25 true

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
# ver 0.11.0
