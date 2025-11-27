# =================================================================================================

##【 MACRO IMPULSE 】
# 手動実行不可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # Character-Get-Macro 関数
  #
  # 参照コンフィグ：
  #   "アイテムID".CustomData.DefaultStack : アイテムの基本スタック数 ( 初期値:1 )
  #
  # 引数：
  #   MasterType : マスタ種別 ( weapon / unique / extra / select )
  #   MasterID   : マスタID ( brave / ikaros / ... )
  #   ItemID     : アイテムID ( master_sword / flying_feather / ... )
  #
  # 処理：
  #   character-get専用マクロ
  #   アイテムの入手、形態変化、後続処理起動、データ管理を行う
  #
  # Doc:v1
  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/



  ## データ管理

    # ストレージ管理

      # コンフィグ読み込み
        # 実行アイテムの基本情報の記入とコンフィグの読み込みを行う
        $execute unless data storage cronica:config $(ItemID).BasicInfo{ItemID: "$(ItemID)"} run data modify storage cronica:config $(ItemID).BasicInfo.MasterType set value "$(MasterType)"
        $execute unless data storage cronica:config $(ItemID).BasicInfo{ItemID: "$(ItemID)"} run data modify storage cronica:config $(ItemID).BasicInfo.MasterID set value "$(MasterID)"
        $execute unless data storage cronica:config $(ItemID).BasicInfo{ItemID: "$(ItemID)"} run data modify storage cronica:config $(ItemID).BasicInfo.ItemID set value "$(ItemID)"
        $data remove storage cronica:config $(ItemID).CustomData
        $function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/config

      # テンポラリストレージ作成
        data remove storage cronica:temp CharacterGet

      # 基礎パラメータ記入
        $data modify storage cronica:temp CharacterGet.MasterType set value "$(MasterType)"
        $data modify storage cronica:temp CharacterGet.MasterID set value "$(MasterID)"
        $data modify storage cronica:temp CharacterGet.ItemID set value "$(ItemID)"

      # UUID取得
        # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
        #
        # UUID-Get-Macro 関数
        #
        # 引数：
        #   StorageName : ストレージ名 ( CharacterGet / ... )
        #
        # 処理：
        #   指定されたストレージにUUIDを取得し、記入する
        #
        # Doc:v1
        # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
        function cronica:system/data/storage/uuid/macro/get { StorageName : "CharacterGet" }

    # スコア管理

      # アイテムモードスコア設置
        $scronicaboard objectives add SCORE.cronica.MODE.$(ItemID) dummy
        $scronicaboard players add @s SCORE.cronica.MODE.$(ItemID) 0



  ## アイテム取得

    # 所持確認
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

      # 所持タグの付与
        data modify storage cronica:temp CharacterGet.TargetType set value "ItemID"
        $data modify storage cronica:temp CharacterGet.TargetID set value "$(ItemID)"
        function cronica:player/inventory/has_check/macro/has_check with storage cronica:temp CharacterGet

    # 未所持の場合、アイテムを新たに入手
      $execute if entity @s[tag =! TAG.cronica.INVENTORY.$(ItemID).Has] run \
        function cronica:player/inventory/common/get/macro/library/default_loot with storage cronica:temp CharacterGet

    # アイテムモデル更新
      function cronica:player/inventory/common/get/macro/library/default_model with storage cronica:temp CharacterGet



  ## 後続処理管理

    # 常時検知処理起動
      $schedule function cronica:player/character/$(MasterID)/$(MasterType)/$(ItemID)/boot/free_detect 1t



  ## データ管理

    # タグ削除
      $tag @s remove TAG.cronica.INVENTORY.$(ItemID).Has

    # スコア削除
      $scronicaboard objectives remove SCORE.cronica.INVENTORY.$(ItemID).StackCount

    # ストレージ削除
      data remove storage cronica:temp CharacterGet
# =================================================================================================
# ver 0.12.1
