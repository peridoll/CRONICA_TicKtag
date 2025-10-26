# =================================================================================================

##【 DESCRIPTION 】

# 常時実行で検知を行うためのBOOT処理
# Get処理から呼び出され、所持している限り実行され続ける
#
# 主な用途としては、スニーク時やダッシュ時などのPredicate検知を行う場合に使用する
#
# =================================================================================================

##【 REPEAT 】

  ## 準備

    # 所持確認
      execute as @a run function cronica:player/status/common_lib/in_inventory {TagCategory: "WEAPON", ItemID: "apollon_bow"}

  ## 行動検知

    # リロード検知
      # [ データ準備 ]
        function cronica:player/character/ikaros/unique/apollon_bow/library/reload/storage

      # [ 検知処理 ]
      execute \
          as @a[\
            tag = TAG.cronica.WEAPON.apollon_bow.Has, \
            tag = TAG.cronica.STATUS.IsSneaking \
          ] \
          if predicate cronica:is_on_ground \
        run \
          function cronica:player/character/ikaros/unique/apollon_bow/library/reload/check
      execute as @a[scores = {SCORE.cronica.WEAPON.apollon_bow.Reloading = 0..}] run function cronica:player/character/ikaros/unique/apollon_bow/library/reload/main

  ## 再起処理

    # 再起処理
      execute if entity @a[tag = TAG.cronica.WEAPON.apollon_bow.Has] run \
        schedule function cronica:player/character/ikaros/unique/apollon_bow/boot/free_detect 1t
# =================================================================================================

##【 REFRESH 】

  ## タグ管理

    # 所持タグ削除
      tag @a[tag = TAG.cronica.WEAPON.apollon_bow.Has] remove TAG.cronica.WEAPON.apollon_bow.Has
# =================================================================================================
# ver 0.10.4
