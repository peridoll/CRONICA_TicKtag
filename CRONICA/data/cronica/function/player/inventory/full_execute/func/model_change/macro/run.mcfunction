# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # FullExecute-ModelChange-Macro 関数
  #
  # 引数：
  #   TargetType : ターゲット種別 ( MasterType / MasterID / TargetID / ... )
  #   TargetID   : ターゲットID ( ikaros / select / flying_feather / ... )
  #   Model      : 切り替えモデルID ( default / armor_stand / sitting / ... )
  #
  # 処理：
  #   インベントリ内を探索し、指定された条件に一致するアイテムのモデルを切り替える
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## 共通マクロ実行:モデル切り替え

    # データ作成
      data remove storage cronica:temp FullExecute_model_change
      data modify storage cronica:temp FullExecute_model_change.Function set value "model_change"

    # 引数記入
      $data modify storage cronica:temp FullExecute_model_change.TargetType set value "$(TargetType)"
      $data modify storage cronica:temp FullExecute_model_change.TargetID set value "$(TargetID)"
      $data modify storage cronica:temp FullExecute_model_change.TargetModel set value "$(Model)"

    # インベントリ探索
      function cronica:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_model_change
# =================================================================================================
# ver 0.13.0
