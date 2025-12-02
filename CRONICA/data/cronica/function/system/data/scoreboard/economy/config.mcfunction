# =================================================================================================


# 削った体力に対して、6割ほどの体力回復用ポーションが買えるくらいの変換率
# ポーション 30points
# ポーションで回復できる体力 4
# 削る体力が20 の場合、0.6倍で12
# 一戦闘当たり、90points 程度を想定

# 20 を 90 に変換する：4.5倍

# 体力 40の場合、180points
# キルボーナスが 50points

# 一人ですべて倒すと、230points 程度をもらえる

# 回復薬が 30 ハートを4回復
# 体力の基本値が 20
# マックスが 40

# 0.5ハートを削ったら？ ＝ 2.25points
# 1ハートを削ったら？ ＝ 4.5points


##【 CONFIG 】

  ## データ基幹管理

    # 相場計算
      # 体力とポイントの変換率 : 通常時体力(20)を基準に、何ライフ分のポーションを買うことができるか　X割の回復ができる
      data modify storage cronica:config Tpoints.HeartRate set value 6.0

    # ポーションレート
      # MaxHealth = 20
      # PotionHeal = 4
      # PotionParice = 30

      # PotionRate = (MaxHealth * HeartRate / 10) / PotionHeal = (20 * 6.0 / 10) / 4 = 3.0
      data modify storage cronica:config Tpoints.PotionRate set value 3.0

    # 戦闘報酬
      # ResultValue = PotionParice * PotionRate = 30 * 3.0 = 90.0
      data modify storage cronica:config Tpoints.ResultValue set value 90.0














# =================================================================================================
# ver 0.13.0
