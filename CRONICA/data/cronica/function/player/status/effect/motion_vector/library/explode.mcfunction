# =================================================================================================

# 一時的にTPしたエンティティを戻す

  # 撤去用、使用した座標変更やタグをもとに戻す

  # function p_motion:main/summon_lib_af
  # kill @s
  summon armor_stand ~ ~ ~ { \
    Marker: 1b, Small: 1b, Invisible: 0b, Silent: 1b, \
    equipment: { \
      chest:{ \
        id:"stone", \
        components: { \
          enchantments: {"cronica:status/motion_vector/escape": 1} \
        } \
      } \
    }, \
    Tags: ["tp_after", "hb.enc_stand"] \
  }
# =================================================================================================

# Y軸
  # Vertical : 垂直方向のベクトル
  # Y1 ~ Y3 でエンチャントをつけるかを判定
  $summon minecraft:armor_stand ~ ~ ~ { \
    Marker: 1b, Small: 1b, Invisible: 0b, Silent: 1b, \
    equipment: { \
      chest: { \
        id: stone, \
        components: { \
          enchantments: {"cronica:status/motion_vector/explode_v1": $(Y1), "cronica:status/motion_vector/explode_v2": $(Y2), "cronica:status/motion_vector/explode_v3": $(Y3)} \
        } \
      } \
    }, \
    Tags: ["hb.enc_stand", "$(SignY)", "v1_$(Y1)", "v2_$(Y2)", "v3_$(Y3)"] \
  }

# =================================================================================================

# X軸
  $execute if data storage cronica:temp MotionVector.Signs{X: 1} run \
    summon minecraft:armor_stand ~-0.0001 ~ ~ { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment: { \
        chest: { \
          id: stone, \
          components: { \
            enchantments: {"cronica:status/motion_vector/explode_h1": $(X1), "cronica:status/motion_vector/explode_h2": $(X2), "cronica:status/motion_vector/explode_h3": $(X3)} \
          } \
        } \
      }, \
      Tags: ["hb.enc_stand", "+", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"] \
    }
  $execute if data storage cronica:temp MotionVector.Signs{X: 1} run \
    summon minecraft:armor_stand ~0.0001 ~ ~ { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment: { \
        chest: { \
          id:stone, \
          components: { \
            enchantments: {"cronica:status/motion_vector/explode_h1": $(X1), "cronica:status/motion_vector/explode_h2": $(X2), "cronica:status/motion_vector/explode_h3": $(X3)} \
          } \
        } \
      }, \
      Tags: ["hb.enc_stand", "-", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"] \
    }
  $execute if data storage cronica:temp MotionVector.Signs{X: -1} run \
    summon minecraft:armor_stand ~0.0001 ~ ~ { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment: { \
        chest: { \
          id:stone, \
          components: { \
            enchantments: {"cronica:status/motion_vector/explode_h1": $(X1), "cronica:status/motion_vector/explode_h2": $(X2), "cronica:status/motion_vector/explode_h3": $(X3)} \
          } \
        } \
      }, \
      Tags: ["hb.enc_stand", "+", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"] \
    }
  $execute if data storage cronica:temp MotionVector.Signs{X: -1} run \
    summon minecraft:armor_stand ~-0.0001 ~ ~ { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment: { \
        chest: { \
          id: stone, \
          components: { \
            enchantments: {"cronica:status/motion_vector/explode_h1": $(X1), "cronica:status/motion_vector/explode_h2": $(X2), "cronica:status/motion_vector/explode_h3": $(X3)} \
          } \
        } \
      }, \
      Tags: ["hb.enc_stand", "-", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"] \
    }

# =================================================================================================

# Z軸
  $execute if data storage cronica:temp MotionVector.Signs{Z: 1} run \
    summon minecraft:armor_stand ~ ~ ~-0.0001 { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment:{ chest: {id:stone, components: {enchantments: {"cronica:status/motion_vector/explode_h1": $(Z1), "cronica:status/motion_vector/explode_h2": $(Z2), "cronica:status/motion_vector/explode_h3": $(Z3)}}}}, \
      Tags: ["hb.enc_stand", "+", "h1_$(Z1)", "h2_$(Z2)", "h3_$(Z3)"] \
    }
  $execute if data storage cronica:temp MotionVector.Signs{Z: 1} run \
    summon minecraft:armor_stand ~ ~ ~0.0001 { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment:{ chest: {id:stone, components: {enchantments: {"cronica:status/motion_vector/explode_h1": $(Z1), "cronica:status/motion_vector/explode_h2": $(Z2), "cronica:status/motion_vector/explode_h3": $(Z3)}}}}, \
      Tags: ["hb.enc_stand", "-", "h1_$(Z1)", "h2_$(Z2)", "h3_$(Z3)"] \
    }
  $execute if data storage cronica:temp MotionVector.Signs{Z: -1} run \
    summon minecraft:armor_stand ~ ~ ~0.0001 { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment:{ chest: {id:stone, components: {enchantments: {"cronica:status/motion_vector/explode_h1": $(Z1), "cronica:status/motion_vector/explode_h2": $(Z2), "cronica:status/motion_vector/explode_h3": $(Z3)}}}}, \
      Tags: ["hb.enc_stand", "+", "h1_$(Z1)", "h2_$(Z2)", "h3_$(Z3)"] \
    }
  $execute if data storage cronica:temp MotionVector.Signs{Z: -1} run \
    summon minecraft:armor_stand ~ ~ ~-0.0001 { \
      Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, \
      equipment:{ chest: {id:stone, components: {enchantments: {"cronica:status/motion_vector/explode_h1": $(Z1), "cronica:status/motion_vector/explode_h2": $(Z2), "cronica:status/motion_vector/explode_h3": $(Z3)}}}}, \
      Tags: ["hb.enc_stand", "-", "h1_$(Z1)", "h2_$(Z2)", "h3_$(Z3)"] \
    }

# =================================================================================================

# 同じ位置のエンティティを一時的にTP
  summon armor_stand ~ ~ ~ { \
    Marker: 1b, Small: 1b, Invisible: 0b, Silent: 1b, \
    equipment: { \
      chest: { \
        id: "stone", \
        components: { \
          enchantments: {"cronica:status/motion_vector/escape": 1} \
        } \
      } \
    }, \
    Tags: ["tp_before","hb.enc_stand"] \
  }
# =================================================================================================
# ver 0.14.0
