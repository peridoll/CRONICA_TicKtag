# =================================================================================================

##【 IMPULSE 】

  ## データ関連管理

    # データ初期化
      $data modify storage cronica:temp FullExecute_$(Function).MasterID \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).MasterType \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).ItemID \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).ItemMode \
        set value ""
      $data modify storage cronica:temp FullExecute_$(Function).ItemStatus \
        set value ""

      $data modify storage cronica:temp FullExecute_$(Function).ID \
        set value ""

    # 各種コンポーネントのデータを取得
      $data modify storage cronica:temp FullExecute_$(Function).MasterID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterID
      $data modify storage cronica:temp FullExecute_$(Function).MasterType \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".MasterType
      $data modify storage cronica:temp FullExecute_$(Function).ItemID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemID
      $data modify storage cronica:temp FullExecute_$(Function).ItemMode \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemMode
      $data modify storage cronica:temp FullExecute_$(Function).ItemStatus \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].components."minecraft:custom_data".ItemStatus

      $data modify storage cronica:temp FullExecute_$(Function).ID \
        set from entity @s Inventory[{Slot:$(SlotNum)b}].id

    # オフハンドのデータを取得
      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches 36 run \
        data modify storage cronica:temp FullExecute_$(Function).MasterID \
        set from entity @s equipment.offhand.components."minecraft:custom_data".MasterID
      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches 36 run \
        data modify storage cronica:temp FullExecute_$(Function).MasterType \
        set from entity @s equipment.offhand.components."minecraft:custom_data".MasterType
      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches 36 run \
        data modify storage cronica:temp FullExecute_$(Function).ItemID \
        set from entity @s equipment.offhand.components."minecraft:custom_data".ItemID
      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches 36 run \
        data modify storage cronica:temp FullExecute_$(Function).ItemMode \
        set from entity @s equipment.offhand.components."minecraft:custom_data".ItemMode
      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches 36 run \
        data modify storage cronica:temp FullExecute_$(Function).ItemStatus \
        set from entity @s equipment.offhand.components."minecraft:custom_data".ItemStatus

      $execute if score @s SCORE.cronica.INCENTORY.FullExecute.$(function).SlotNum matches 36 run \
        data modify storage cronica:temp FullExecute_$(Function).ID \
        set from entity @s equipment.offhand.id
# =================================================================================================
# ver 0.11.0
