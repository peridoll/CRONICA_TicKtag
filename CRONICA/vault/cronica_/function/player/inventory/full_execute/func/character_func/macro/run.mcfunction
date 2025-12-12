# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # FullExecute-CharacterFunc-Macro 関数
  #
  # 引数：
  #   Action : 実行アクション ( run / leave / ... )
  #
  # 処理：
  #   インベントリ内を探索し、すべてのアイテムで指定されたキャラクター関連処理を実行する
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## 共通マクロ実行:キャラクター関連

    # データ作成
      data remove storage cronica:temp FullExecute_character_func
      data modify storage cronica:temp FullExecute_character_func.Function set value "character_func"

    # 引数記入
      $data modify storage cronica:temp FullExecute_character_func.Action set value "$(Action)"

    # インベントリ探索
      function cronica:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_character_func
# =================================================================================================
# ver 0.13.0
