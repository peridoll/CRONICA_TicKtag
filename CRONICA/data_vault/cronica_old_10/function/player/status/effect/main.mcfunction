# =================================================================================================

##【 IMPULSE 】

  ## 基本エフェクト管理
  # /* 値に応じてエフェクトのレベルが変動する */

    # # スピード管理
    #   function cronica_dev:player/status/effect/basic/macro/calc {id: "Speed", effect: "speed", base_value: 2, rev_effect: "slowness"}
      effect give @s minecraft:speed infinite 1 true
    # # ジャンプ力管理
    #   function cronica_dev:player/status/effect/basic/macro/calc {id: "Jump", effect: "jump_boost", base_value: 2, rev_effect: "jump_boost"}
      effect give @s minecraft:jump_boost infinite 1 true
    # # 攻撃力管理
    #   function cronica_dev:player/status/effect/basic/macro/calc {id: "Attack", effect: "strength", base_value: 0, rev_effect: "weakness"}
    # # 防御力管理
    #   function cronica_dev:player/status/effect/basic/macro/calc {id: "Defense", effect: "resistance", base_value: 0, rev_effect: "resistance"}

    # 体力最大値管理
      effect give @s minecraft:health_boost infinite 4 true

  ## 追加エフェクト管理
  # /* 値が一定で、ついているかついていないかの違いのみ */

    # 落下速度軽減

    # 発光

# =================================================================================================
# ver 0.10.4
