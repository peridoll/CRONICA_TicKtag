# =================================================================================================

##【 IMPULSE 】
# 手動実行可, 単数実行

  # _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
  #
  # Character-Get 関数
  #
  # キャラクター関連のアイテムを作成した場合、必ず作成する必要がある
  # 諸々の処理はマクロ化されているため、引数を指定してマクロを呼び出すだけでよい
  #
  # また、特別な形態が必要な場合は、下部で形態変化を行う
  # 使用していないモード番号を使用すると新たな形態を追加
  # 使用済み番号を使用すると、既存の形態を置き換える形で形態を追加できる
  #
  #   ItemMode
  #     0 : 通常形態 : ready
  #    -1 : 使用中   : using
  #    -2 : 使用済み : used
  #    -3 : 使用不可 : ban
  #   -99 ~ -120 : 待機中
  #
  # Doc:v1
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

  # 共通処理
    data merge storage cronica:temp \
      { \
        BasicInfo : \
          { \
            MasterType : "select", \
            MasterID   : "shadow", \
            ItemID     : "shadow_armor" \
          } \
      }
    function cronica:player/inventory/get/macro/get with storage cronica:temp BasicInfo
# =================================================================================================
# ver 0.13.0
