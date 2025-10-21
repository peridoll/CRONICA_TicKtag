# =================================================================================================

##【 REPEAT 】

  ## 準備

    # 所持確認
      execute as @a[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "apollon_bow"}}}]}] run tag @s add TAG.cronica.WEAPON.apollon_bow.Has
      data modify storage cronica:temp WEAPON.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp WEAPON{Offhand: "apollon_bow"} run tag @s add TAG.cronica.CHARACTER.apollon_bow.Has

  ## 行動検知

    # リロード検知
      execute \
          as @a[\
            tag = TAG.cronica.WEAPON.apollon_bow.Has, \
            tag = TAG.cronica.STATUS.IsSneaking \
          ] \
          if predicate cronica:is_on_ground \
        run \
          function cronica:player/character/ikaros/unique/apollon_bow/library/reload/check

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.WEAPON.apollon_bow.Has] run schedule function cronica:player/character/ikaros/unique/apollon_bow/library/main 1t
      tag @a[tag = TAG.cronica.WEAPON.apollon_bow.Has] remove TAG.cronica.WEAPON.apollon_bow.Has
# =================================================================================================
# ver 0.10.3
