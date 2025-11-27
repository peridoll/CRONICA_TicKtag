# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # HasCheck-Macro 関数
  #
  # 引数：
  #   TargetType : ターゲット種別 ( MasterType / MasterID / TargetID / ... )
  #   TargetID   : ターゲットID ( ikaros / select / flying_feather / ... )
  #
  # 処理：
  #   指定されたアイテムの所持確認を行う
  #   通常インベントリ、オフハンド、カーソルアイテムを確認し、所持している場合はタグを付与する
  #   タグの使用後は、必ずタグを削除すること
  #
  # 出力：
  #   タグ TAG.cronica.INVENTORY."ターゲットID".Has
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## データ管理

    # タグ消し
      $tag @s remove TAG.cronica.INVENTORY.$(TargetID).Has



  ## 所持確認

    # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
    #
    # TAG.cronica.INVENTORY.UsingEscapeSlot : スロット避難中タグ
    #
    # エンダーチェスト内のスロット0を避難場所として使用する
    # 使用中に割り込み処理をするとデータが破損する恐れがあるため、このタグが付与されている場合は確認処理を行わない
    #
    # Doc:v1
    # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

    # 通常インベントリ内確認
      $execute as @s[nbt = {Inventory: [{components: {"minecraft:custom_data": {$(TargetType): "$(TargetID)"}}}]}] run \
        tag @s add TAG.cronica.INVENTORY.$(TargetID).Has

    # オフハンド所持確認
      $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(TargetID).Has, tag =! TAG.cronica.INVENTORY.UsingEscapeSlot] run \
        function cronica:player/inventory/has_check/macro/has_check_lib { Slot: "weapon.offhand", TargetType : "$(TargetType)", TargetID : "$(TargetID)" }

    # カーソルアイテム確認
      $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(TargetID).Has, tag =! TAG.cronica.INVENTORY.UsingEscapeSlot] run \
        function cronica:player/inventory/has_check/macro/has_check_lib { Slot: "player.cursor", TargetType : "$(TargetType)", TargetID : "$(TargetID)" }
# =================================================================================================
# ver 0.13.0
