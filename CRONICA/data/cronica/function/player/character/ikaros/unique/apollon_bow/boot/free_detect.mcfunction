# =================================================================================================

##【 DESCRIPTION 】

# 常時実行で検知を行うためのBOOT処理
# Get処理から呼び出され、所持している限り実行され続ける
#
# 主な用途としては、スニーク時やダッシュ時などのPredicate検知を行う場合に使用する
#
# =================================================================================================

##【 REPEAT 】

  ## 行動検知

    # 所持確認 (インベントリに存在するかを確認)
      execute as @a run function cronica:player/status/inventory/slot/macro/has_check {ItemID: "apollon_bow"}

    # リロード検知
      execute \
          as @a[\
            tag = TAG.cronica.INVENTORY.apollon_bow.Has, \
            tag = TAG.cronica.STATUS.IsSneaking \
          ] \
          if predicate cronica:is_on_ground \
        run \
          function cronica:player/character/ikaros/unique/apollon_bow/library/reload/check
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run \
        function cronica:player/status/common_lib/charge/macro/main with storage cronica:config ApollonBowReload

    # チャージ検知
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Charging = 0..}] run \
        function cronica:player/status/common_lib/charge/macro/main with storage cronica:config ApollonBowCharge

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
        schedule function cronica:player/character/ikaros/unique/apollon_bow/boot/free_detect 1t

##【 REFRESH 】

  ## タグ管理

    # 所持タグ削除
      tag @a[tag = TAG.cronica.INVENTORY.apollon_bow.Has] remove TAG.cronica.INVENTORY.apollon_bow.Has
# =================================================================================================
# ver 0.10.4
