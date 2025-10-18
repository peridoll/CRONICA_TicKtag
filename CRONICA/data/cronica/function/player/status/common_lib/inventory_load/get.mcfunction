# =================================================================================================
#
# CRONICA - CHARACTER ITEM GET FUNCTION
#
# =================================================================================================

##【 IMPULSE 】

  ## アイテム所在確認

    # 全体でアイテムを持っているかを確認(オフハンドはなぜか含まれない)
      $execute as @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {"ItemID": "$(ItemID)"}}}]}] run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has

    # オフハンドにアイテムがあるかを確認
      data modify storage cronica:temp GetInventory.Offhand set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if data storage cronica:temp GetInventory{Offhand: "$(ItemID)"} run tag @s add TAG.cronica.CHARACTER.$(ItemID).Has

  ## 所定のアイテムを入手

    # アイテムを削除 (検知範囲外に所持していた場合、この処理で削除を行う)
      $execute as @s[tag =! TAG.cronica.CHARACTER.$(ItemID).Has] run function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/item_clear

    # アイテム入手
      $execute as @s[tag =! TAG.cronica.CHARACTER.$(ItemID).Has] run \
        function cronica:player/status/common_lib/inventory_load/load {MasterID: "$(MasterID)", MasterType: "$(MasterType)", ItemID: "$(ItemID)", ItemCategory: "$(ItemCategory)"}
      $execute as @s[tag =! TAG.cronica.CHARACTER.$(ItemID).Has] run \
        loot give @s loot cronica:character/$(MasterID)/$(MasterType)/$(ItemID)

##【 REFRESH 】

  # 状態初期化
    $tag @s remove TAG.cronica.CHARACTER.$(ItemID).Has
    data remove storage cronica:temp GetInventory

##【 スコア管理 】

  # モード用スコア設置
    $scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
    $scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 0
# =================================================================================================
# ver 0.10.3
