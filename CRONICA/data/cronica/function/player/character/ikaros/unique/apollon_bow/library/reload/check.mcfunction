# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # 一時タグ削除
      tag @s remove TAG.cronica.CHARACTER.apollon_bow.Has

    # メインハンド所持確認
      execute if entity @s[nbt = {SelectedItem: {components: {"minecraft:custom_data": {"ItemID": "apollon_bow"}}}}] run tag @s add TAG.cronica.CHARACTER.apollon_bow.Has

    # オフハンド所持確認
      data modify storage cronica:temp WEAPON.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp WEAPON{Offhand: "apollon_bow"} run tag @s add TAG.cronica.CHARACTER.apollon_bow.Has

  ## 後続処理呼び出し

    # リロード処理
      execute if entity @s[tag = TAG.cronica.CHARACTER.apollon_bow.Has] run function cronica:player/character/ikaros/unique/apollon_bow/library/reload/run
# =================================================================================================
# ver 0.10.3
