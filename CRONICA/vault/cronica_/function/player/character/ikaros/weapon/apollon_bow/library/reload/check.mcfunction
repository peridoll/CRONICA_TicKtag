# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # データリセット
      data remove storage cronica:temp apollon_bow.ReloadCheck

    # データ取得
      data modify storage cronica:temp apollon_bow.ReloadCheck.Mainhand.ItemID set from entity @s SelectedItem.components."minecraft:custom_data".ItemID
      data modify storage cronica:temp apollon_bow.ReloadCheck.Offhand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID

    # メインハンド所持確認
      execute if entity @s[tag =! TAG.cronica.WEAPON.apollon_bow.ReloadCheck] if data storage cronica:temp apollon_bow.ReloadCheck.Mainhand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck
      execute if entity @s[tag =! TAG.cronica.WEAPON.apollon_bow.ReloadCheck] if data storage cronica:temp apollon_bow.ReloadCheck.Mainhand{ItemID: "apollon_arrow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck

    # オフハンド所持確認
      execute if entity @s[tag =! TAG.cronica.WEAPON.apollon_bow.ReloadCheck] if data storage cronica:temp apollon_bow.ReloadCheck.Offhand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck
      execute if entity @s[tag =! TAG.cronica.WEAPON.apollon_bow.ReloadCheck] if data storage cronica:temp apollon_bow.ReloadCheck.Offhand{ItemID: "apollon_arrow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.ReloadCheck

    # 残段数確認
      execute if entity @s[tag = TAG.cronica.WEAPON.apollon_bow.ReloadCheck] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/macro/check_ammo with storage cronica:config apollon_arrow.CustomData

  ## 後続処理呼び出し

    # リロード処理
      execute if entity @s[tag = TAG.cronica.WEAPON.apollon_bow.ReloadCheck] run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/reload/run

    # タグ削除
      tag @s remove TAG.cronica.WEAPON.apollon_bow.ReloadCheck
# =================================================================================================
# ver 0.13.0
