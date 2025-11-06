# =================================================================================================

##【 IMPULSE 】

  ## インベントリ管理

    # アイテム削除
      $execute if data storage cronica:temp FullExecute_clear_item{ItemID: "$(TargetID)"} run \
        clear @s minecraft:$(ID)[ \
          minecraft:custom_data = { \
            "MasterID":   "$(MasterID)", \
            "MasterType": "$(MasterType)", \
            "ItemID":     "$(ItemID)", \
            "ItemMode":   "$(ItemMode)", \
            "ItemStatus": "$(ItemStatus)" \
          } \
        ]
# =================================================================================================
# ver 0.11.0

# clear @s minecraft:diamond_horse_armor[ \
#   minecraft:custom_data = { \
#     "ItemCategory":"SelectSkill", \
#     "ItemID":"FlyingFeather", \
#     "ItemStatus":"ready" \
#   } \
# ]
