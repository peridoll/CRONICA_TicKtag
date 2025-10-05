# =================================================================================================

# スピード管理
function cronica:player/status/effect/basic/common/calc {id: "Speed", effect: "speed", base_value: 2, rev_effect: "slowness"}
# ジャンプ力管理
function cronica:player/status/effect/basic/common/calc {id: "Jump", effect: "jump_boost", base_value: 2, rev_effect: "jump_boost"}
# 攻撃力管理
function cronica:player/status/effect/basic/common/calc {id: "Attack", effect: "strength", base_value: 0, rev_effect: "weakness"}
# 防御力管理
function cronica:player/status/effect/basic/common/calc {id: "Defense", effect: "resistance", base_value: 0, rev_effect: "resistance"}

# 体力最大値管理
effect give @s minecraft:health_boost infinite 4 true
# =================================================================================================
