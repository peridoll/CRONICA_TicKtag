# =================================================================================================

##【 IMPULSE 】
# 手動実行可, 単数実行

  ## 実績リセット

    # インベントリ関連

      # アイテム使用検知
        advancement revoke @s only cronica:inventory/using_item

      # インベントリ更新
        advancement revoke @s only cronica:inventory/change_inventory

    # ステータス関連

      # キル判定
        advancement revoke @s only cronica:status/kill

      # デス判定
        advancement revoke @s only cronica:status/death

      # 攻撃判定管理

        # 残留ポーション
          advancement revoke @s only cronica:status/attack/area_effect_cloud

        # 矢
          advancement revoke @s only cronica:status/attack/arrow

        # 花火
          advancement revoke @s only cronica:status/attack/firework

        # 近接
          advancement revoke @s only cronica:status/attack/melee

        # ポーション
          advancement revoke @s only cronica:status/attack/potion

        # トライデント
          advancement revoke @s only cronica:status/attack/trident

      # ダメージ判定管理

        # 残留ポーション
          advancement revoke @s only cronica:status/defense/area_effect_cloud

        # 矢
          advancement revoke @s only cronica:status/defense/arrow

        # 花火
          advancement revoke @s only cronica:status/defense/firework

        # 近接
          advancement revoke @s only cronica:status/defense/melee

        # ポーション
          advancement revoke @s only cronica:status/defense/potion

        # トライデント
          advancement revoke @s only cronica:status/defense/trident

        # 敵対モブ管理

          # スケルトン
            advancement revoke @s only cronica:status/defense/enemy/skeleton/arrow
            advancement revoke @s only cronica:status/defense/enemy/skeleton/melee
# =================================================================================================
# ver 0.13.0
