# =================================================================================================

##【 IMPULSE 】

  ## 後続処理呼び出し

    # 共通処理呼び出し
      function core:player/character/activate/macro/run { ItemID : "begin_twilight" }

  ## 実行処理

    # 進化
      tag @s add TAG.cronica.WEAPON.apollon_bow.EVOLVED
      function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve

  ## 装飾

    # パーティクル
      # particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

    # サウンド
      # playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
      # playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
# ver 0.12.0
