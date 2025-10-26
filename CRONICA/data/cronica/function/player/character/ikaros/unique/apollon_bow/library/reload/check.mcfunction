# =================================================================================================

##【 DESCRIPTION 】

# リロード検知を行うための所持チェック
# メインハンドかオフハンドかに握っていることが条件

# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # 一時タグ削除
      tag @s remove TAG.cronica.WEAPON.apollon_bow.Has

    # メインハンド所持確認
      data modify storage cronica:temp MainHand.ItemID set from entity @s equipment.mainhand.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp MainHand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.Has
      execute if data storage cronica:temp MainHand{ItemID: "apollon_arrow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.Has

    # オフハンド所持確認
      data modify storage cronica:temp OffHand.ItemID set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      execute if data storage cronica:temp OffHand{ItemID: "apollon_bow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.Has
      execute if data storage cronica:temp OffHand{ItemID: "apollon_arrow"} run tag @s add TAG.cronica.WEAPON.apollon_bow.Has

  ## 後続処理呼び出し

    # リロード処理
      execute if entity @s[tag = TAG.cronica.WEAPON.apollon_bow.Has] run function cronica:player/status/common_lib/charge/run with storage cronica:temp Reload
# =================================================================================================
# ver 0.10.4
