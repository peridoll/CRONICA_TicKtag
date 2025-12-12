# =================================================================================================

##【 IMPULSE 】
# 手動実行可, 単数実行



  ## プレイヤー管理

    # アイテムステータス更新

      # モード更新：使用中
        scoreboard objectives add SCORE.cronica.MODE.begin_twilight dummy
        scoreboard players set @s SCORE.cronica.MODE.begin_twilight -1
        function cronica:player/character/ikaros/unique/begin_twilight/get

    # 実行処理

      # 実行中タグ付け
        tag @s add TAG.cronica.SKILL.begin_twilight.Activated

      # アイテム置き換え
        function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/evolve



  ## 装飾

    # パーティクル
      # particle minecraft:cloud ~ ~ ~ 0.2 0.2 0.2 0.1 50 force

    # サウンド
      # playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 2 1
      # playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 2 1
# =================================================================================================
# ver 0.13.0
