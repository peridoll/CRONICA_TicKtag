# =================================================================================================

##【 DETECTION 】
# 行動検知

  ## データ管理

    # タグ管理

      # 所持確認 (インベントリに存在するかを確認)
        execute as @a[tag =! TAG.cronica.INVENTORY.apollon_bow.HasCheck.FreeDetect] run \
          function cronica:player/inventory/has_check/macro/has_check { ItemID : "apollon_bow"}
        execute as @a[tag =! TAG.cronica.INVENTORY.apollon_bow.HasCheck.FreeDetect, tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
          tag @s add TAG.cronica.INVENTORY.apollon_bow.HasCheck.FreeDetect
        execute as @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run tag @s remove TAG.cronica.INVENTORY.apollon_bow.Has



  ## 検知処理呼び出し

    # リロード検知
      execute \
          as @a[\
            tag = TAG.cronica.INVENTORY.apollon_bow.HasCheck.FreeDetect, \
            tag = TAG.cronica.STATUS.IsSneaking, \
          ] \
          if predicate cronica:is_on_ground \
          unless score @s SCORE.cronica.STATUS.ItemUsing matches 1.. \
        run \
          function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/check
      execute as @a[tag = TAG.cronica.WEAPON.apollon_bow.Reloading] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/main





      # 実行検知
        # execute \
            as @a[\
              tag = TAG.cronica.INVENTORY.apollon_bow.Has \
            ] \
            if score @s SCORE.cronica.WEAPON.apollon_bow.Shoot matches 1.. \
          run \
            function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/check

      # スコア管理
        # scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Shoot
        # execute if entity @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
          scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Shoot minecraft.used:minecraft.bow



  ## 後続処理呼び出し

    # 再起処理
      execute if entity @a[tag = TAG.cronica.INVENTORY.apollon_bow.HasCheck.FreeDetect, tag = TAG.cronica.GAMING] run \
        schedule function cronica:player/character/ikaros/weapon/apollon_bow/boot/free_detect 1t
# =================================================================================================
# ver 0.13.0
