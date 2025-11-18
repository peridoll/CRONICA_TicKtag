# =================================================================================================

##【 REPEAT 】

  ## 行動検知

    # 所持確認 (インベントリに存在するかを確認)
      execute as @a run function core:player/inventory/has_check/macro/has_check { ItemID : "apollon_bow"}

    # リロード検知
      execute \
          as @a[\
            tag = TAG.cronica.INVENTORY.apollon_bow.Has, \
            tag = TAG.cronica.STATUS.IsSneaking, \
            tag =! TAG.cronica.STATUS.ItemUsing \
          ] \
          if predicate core:is_on_ground \
        run \
          function core:player/character/charge/reload/macro/check with storage cronica:config apollon_bow.CustomData.Reload
      execute as @a[tag = TAG.cronica.WEAPON.apollon_bow.Reloading] run \
        function core:player/character/charge/reload/macro/main with storage cronica:config apollon_bow.CustomData.Reload

    # 発射検知

      # 実行検知
        execute \
            as @a[\
              tag = TAG.cronica.INVENTORY.apollon_bow.Has \
            ] \
            if score @s SCORE.cronica.WEAPON.apollon_bow.Shoot matches 1.. \
          run \
            function cronica:player/character/ikaros/weapon/apollon_bow/library/shoot/check

      # スコア管理
        scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.Shoot
        execute if entity @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
          scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.Shoot minecraft.used:minecraft.bow

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
        schedule function cronica:player/character/ikaros/weapon/apollon_bow/boot/free_detect 1t

##【 REFRESH 】

  ## タグ管理

    # 所持タグ削除
      tag @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] remove TAG.cronica.INVENTORY.apollon_bow.Has
# =================================================================================================
# ver 0.12.0
