# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # FullExecute-CountCheck-Macro 関数
  #
  # 引数：
  #   ScoreName  : スコア名
  #   TargetType : ターゲット種別 ( MasterType / MasterID / TargetID / ... )
  #   TargetID   : ターゲットID ( ikaros / select / flying_feather / ... )
  #
  # 処理：
  #   インベントリ内を探索し、指定された条件に一致するアイテムの個数を確認する
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## 共通マクロ実行:モデル切り替え

    # データ作成
      data remove storage cronica:temp FullExecute_count_check
      data modify storage cronica:temp FullExecute_count_check.Function set value "count_check"

    # 引数記入
      $data modify storage cronica:temp FullExecute_count_check.ScoreName set value "$(ScoreName)"
      $data modify storage cronica:temp FullExecute_count_check.TargetType set value "$(TargetType)"
      $data modify storage cronica:temp FullExecute_count_check.TargetID set value "$(TargetID)"

    # インベントリ探索
      function cronica:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_count_check
# =================================================================================================
# ver 0.13.0
