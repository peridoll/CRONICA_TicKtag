# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # ModeChange-Macro 関数
  #
  # 引数：
  #   TargetType : ターゲット種別 ( MasterType / MasterID / TargetID / ... )
  #   TargetID   : ターゲットID ( ikaros / select / flying_feather / ... )
  #   Model      : 変更モデル名 ( default / ... )
  #
  # 処理：
  #   指定されたアイテムのモデル変更を行う
  #   対象のタイプに含まれるものはすべて変更されるため、カテゴリで選択して一括変更も可能
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## モデル変更処理

    # インベントリ探索
      $function cronica:player/inventory/full_execute/func/model_change/macro/run {TargetType: "$(TargetType)", TargetID: "$(TargetID)", Model: "$(Model)"}



  ## スコア管理

    # アイテムモード初期化
      $execute if score @s SCORE.cronica.MODE.$(TargetID) matches 0 run scoreboard players reset @s SCORE.cronica.MODE.$(TargetID)

    # アイテムモード撤去
      $execute unless entity @a[scores = {SCORE.cronica.MODE.$(TargetID) = -999..}] run \
        scoreboard objectives remove SCORE.cronica.MODE.$(TargetID)
# =================================================================================================
# ver 0.13.0
