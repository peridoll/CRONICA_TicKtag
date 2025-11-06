# =================================================================================================

##【 IMPULSE 】

  ## 共通マクロ実行:キャラクター関連

    # データ作成
      data remove storage cronica:temp FullExecute_character_func
      data modify storage cronica:temp FullExecute_character_func.Function set value "character_func"
      $data modify storage cronica:temp FullExecute_character_func.Action set value "$(Action)"

    # インベントリ探索
      function cronica:player/inventory/full_execute/common/macro/run with storage cronica:temp FullExecute_character_func
# =================================================================================================
# ver 0.11.0
