# =================================================================================================

##【 IMPULSE 】

  ## インベントリ管理

    # アイテム削除
      $execute if data storage cronica:temp FullExecute_item_clear{ItemID: "$(TargetID)"} run \
        $clear @s minecraft:$(ID) \
          { \
            components:{ \
              "minecraft:custom_data": { \
                MasterID:   "$(MasterID)", \
                MasterType: "$(MasterType)", \
                ItemID:     "$(ItemID)", \
                ItemMode:   "$(ItemMode)", \
                ItemStatus: "$(ItemStatus)" \
              } \
            } \
          }
# =================================================================================================
# ver 0.11.0
