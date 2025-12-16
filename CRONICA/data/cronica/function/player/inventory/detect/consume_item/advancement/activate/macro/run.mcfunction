# =================================================================================================

##【 ACTIVATION 】
# 実行関数

  ## アイテム消費検知
  # run-func アイテム消費時のハンド判定を実行する

    # 判定用タグの付与
      tag @s add TAG.cronica.INVENTORY.ConsumeItem.Activated

    # アイテム効果発動
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/library/activate/run

    # 基本リキャスト構築(アイテム非消費時)
      execute store result storage cronica:temp ConsumeItemActivation.RecastStartTime int 1 run time query gametime
      function cronica:player/inventory/detect/consume_item/advancement/activate/macro/recast_setup with storage cronica:temp ConsumeItemActivation
# =================================================================================================
# ver 0.14.1
