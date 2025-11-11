# =================================================================================================

##【 IMPULSE MACRO SYSTEM 】
# 通常事項、マクロ、手動実行不可

  ## データ管理

    # コンフィグ読み込み
      $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/config

    # スコア管理
      $scoreboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
      $scoreboard players add @s SCORE.cronica.MODE.$(ItemID) 0

    # ストレージ管理

      # 初期化
        data remove storage cronica:temp CharacterGet

      # 基本パラメータ記入
        $data modify storage cronica:temp CharacterGet.MasterType set value "$(MasterType)"
        $data modify storage cronica:temp CharacterGet.MasterID set value "$(MasterID)"
        $data modify storage cronica:temp CharacterGet.ItemID set value "$(ItemID)"

      # UUID取得
        # CharacterGet.UUID にプレイヤーUUIDを取得
        function cronica_lib:system/data/storage/uuid/macro/get {StorageName: "CharacterGet"}

  ## アイテム取得

    # 所持確認
      # 現在所持している場合は入手を行わずに、形態変化のみを行う
      # タグ TAG.cronica.INVENTORY."アイテムID".Has を付与する
      function cronica_lib:player/inventory/has_check/macro/has_check with storage cronica:temp CharacterGet











#     # 未所持の場合、アイテム入手
#       $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
#         function cronica:player/character/common/get/macro/default_loot with storage cronica:temp CharacterGet

#     # アイテムステータス付与
#       # TODO: 戦闘機能を作る前には実施

#   ## 後続処理起動

#     # 常時検知処理起動
#       $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/boot/free_detect 1t

# ##【 REFRESH 】

#   ## データ管理

#     # タグ削除
#       $tag @s remove TAG.cronica.INVENTORY.$(ItemID).Has

#     # スコア削除
#       $scoreboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).Count

#     # ストレージ削除
#       data remove storage cronica:temp CharacterGet
# =================================================================================================
# ver 0.12.0
