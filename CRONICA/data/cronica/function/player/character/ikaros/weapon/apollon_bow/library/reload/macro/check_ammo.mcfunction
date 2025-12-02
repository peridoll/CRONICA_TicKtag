# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # 残段数確認

      # スコア作成
        scoreboard objectives add SCORE.cronica.WEAPON.apollon_bow.ReloadCheck.AmmoStack dummy

      # 現個数取得
        function cronica:player/inventory/full_execute/func/count_check/macro/run \
          { \
            ScoreName  : "SCORE.cronica.WEAPON.apollon_bow.ReloadCheck.AmmoStack", \
            TargetType : "ItemID", \
            TargetID   : "apollon_arrow" \
          }

      # 差分確認
        $execute if score @s SCORE.cronica.WEAPON.apollon_bow.ReloadCheck.AmmoStack matches $(DefaultStack).. run \
          tag @s remove TAG.cronica.WEAPON.apollon_bow.ReloadCheck

      # スコア削除
        scoreboard objectives remove SCORE.cronica.WEAPON.apollon_bow.ReloadCheck.AmmoStack
# =================================================================================================
# ver 0.13.0
