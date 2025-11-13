# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常実行、マクロ、手動実行不可

  ## データ管理

    # コンフィグ読み込み
      $data modify storage cronica:config $(ItemID).BasicInfo.MasterType set value "$(MasterType)"
      $data modify storage cronica:config $(ItemID).BasicInfo.MasterID set value "$(MasterID)"
      $data modify storage cronica:config $(ItemID).BasicInfo.ItemID set value "$(ItemID)"
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/config

    # スコア管理
      $scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
      $scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 0

    # ストレージ管理

      # 初期化
        data remove storage cronica:temp CharacterGive

      # 基本パラメータ記入
        data modify storage cronica:temp CharacterGive.StorageName set value "CharacterGive"
        $data modify storage cronica:temp CharacterGive.MasterType set value "$(MasterType)"
        $data modify storage cronica:temp CharacterGive.MasterID set value "$(MasterID)"
        $data modify storage cronica:temp CharacterGive.ItemID set value "$(ItemID)"
        data modify storage cronica:temp CharacterGive.Model set value "skill"
        execute if data storage cronica:temp CharacterGive{ MasterType: "weapon" } run \
          data modify storage cronica:temp CharacterGive.Model set value "weapon"

  ## アイテム取得

    # 所持確認
      # 現在所持している場合は入手を行わずに、形態変化のみを行う
      # タグ TAG.cronica.INVENTORY."アイテムID".Has を付与する
      function core:player/inventory/has_check/macro/has_check with storage cronica:temp CharacterGive

    # 未所持の場合、アイテム入手
      $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
        function core:player/character/give/macro/loot_get/default_loot with storage cronica:temp CharacterGive

    # アイテムモデル変更
      function core:player/character/give/macro/loot_get/default_model with storage cronica:temp CharacterGive

  ## 後続処理管理

    # 常時検知処理起動
      $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/boot/free_detect 1t

  ## データ管理

    # タグ削除
      $tag @s remove TAG.cronica.INVENTORY.$(ItemID).Has

    # スコア削除
      $scoreboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).StackCount

    # ストレージ削除
      data remove storage cronica:temp CharacterGive
# =================================================================================================
# ver 0.12.0
