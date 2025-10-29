# =================================================================================================
#
# CRONICA - Ikaros - Flying Feather
#
# run
# |
# main
# └─ stop_ceiling
# └─ stop_stun
# └─ flaping
# └─ finish
#   └─ reset
# |
# ct
#
# =================================================================================================

##【 共通処理 】

  ## キャラクター関連の共通処理を実行
  # MasterID     : brave        / ikaros         / etc..
  # MasterType   : unique       / select         / etc..
  # ItemID       : master_sword / flying_feather / etc..

  # 所持アイテム置き換え、スコアボード作成、コンフィグ読み込み、メイン処理呼び出し、CT処理呼び出し などを実行
  function cronica_dev:player/status/common_lib/macro/run \
    {\
      MasterID     : "ikaros", \
      MasterType   : "select", \
      ItemID       : "flying_feather" \
    }
# =================================================================================================

##【 IMPULSE 】

  ## 基本動作

    # ゲームモード
      tag @s[gamemode = creative] add TAG.cronica_dev.SKILL.flying_feather.RunCreative
      gamemode adventure @s[tag = TAG.cronica_dev.SKILL.flying_feather.RunCreative]

    # エフェクト
      effect give @s minecraft:levitation 1 25 true

    # ゲームモード
      gamemode creative @s[tag = TAG.cronica_dev.SKILL.flying_feather.RunCreative]
      tag @s[tag = TAG.cronica_dev.SKILL.flying_feather.RunCreative] remove TAG.cronica_dev.SKILL.flying_feather.RunCreative

  ## 装飾

    # パーティクル
      particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

    # サウンド
      playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
      playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
# ver 0.10.3
