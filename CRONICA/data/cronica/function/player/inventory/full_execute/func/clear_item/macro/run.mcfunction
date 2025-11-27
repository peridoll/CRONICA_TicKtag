# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # FullExecute-ClearItem-Macro 関数
  #
  # 引数：
  #   TargetType : ターゲット種別 ( MasterType / MasterID / TargetID / ... )
  #   TargetID   : ターゲットID ( ikaros / select / flying_feather / ... )
  #
  # 処理：
  #   インベントリ内を探索し、指定された条件に一致するアイテムを削除する
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## 共通マクロ実行:アイテム削除

    # データ作成
      data remove storage cronica:temp FullExecute_clear_item
      data modify storage cronica:temp FullExecute_clear_item.Function set value "clear_item"

    # 引数記入
      $data modify storage cronica:temp FullExecute_clear_item.TargetType set value "$(TargetType)"
      $data modify storage cronica:temp FullExecute_clear_item.TargetID set value "$(TargetID)"

    # インベントリ探索
      function cronica:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_clear_item
# =================================================================================================
# ver 0.13.0
