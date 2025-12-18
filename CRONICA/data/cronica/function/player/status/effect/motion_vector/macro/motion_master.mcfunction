# =================================================================================================

##【 IMPULSE 】

  ## 指定した数値の強さで視点の方向にかっ飛ばす

    # 一時的にTPしたエンティティを戻す
      summon armor_stand ~ ~ ~ {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: "stone", \
        components: {enchantments: {"cronica:status/motion_vector/tp": 1}}}}, \
        Tags: ["TAG.cronica.STATUS.MotionVector.TpAfter", "TAG.cronica.STATUS.MotionVector.MasterStand"]}

    # Y軸
      $summon minecraft:armor_stand ~ ~ ~ {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: "stone", \
        components: {enchantments: {"cronica:status/motion_vector/vertical1": $(Y1), "cronica:status/motion_vector/vertical2": $(Y2), "cronica:status/motion_vector/vertical3": $(Y3)}}}}, \
        Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand","$(SignY)","v1_$(Y1)","v2_$(Y2)","v3_$(Y3)"]}

    # X軸
      $execute if data storage cronica:temp VectorJumper.Signs{X: 1} run \
        summon minecraft:armor_stand ~-0.0001 ~ ~ {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: "stone", \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(X1), "cronica:status/motion_vector/horizon2": $(X2), "cronica:status/motion_vector/horizon3": $(X3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "+", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"]}
      $execute if data storage cronica:temp VectorJumper.Signs{X: 1} run \
        summon minecraft:armor_stand ~0.0001 ~ ~ {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: "stone", \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(X1), "cronica:status/motion_vector/horizon2": $(X2), "cronica:status/motion_vector/horizon3": $(X3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "-", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"]}

      $execute if data storage cronica:temp VectorJumper.Signs{X: -1} run \
        summon minecraft:armor_stand ~0.0001 ~ ~ {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: "stone", \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(X1), "cronica:status/motion_vector/horizon2": $(X2), "cronica:status/motion_vector/horizon3": $(X3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "+", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"]}
      $execute if data storage cronica:temp VectorJumper.Signs{X: -1} run \
        summon minecraft:armor_stand ~-0.0001 ~ ~ {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: "stone", \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(X1), "cronica:status/motion_vector/horizon2": $(X2), "cronica:status/motion_vector/horizon3": $(X3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "-", "h1_$(X1)", "h2_$(X2)", "h3_$(X3)"]}

    # Z軸
      $execute if data storage cronica:temp VectorJumper.Signs{Z: 1} run \
        summon minecraft:armor_stand ~ ~ ~-0.0001 {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: stone, \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(z1), "cronica:status/motion_vector/horizon2": $(z2), "cronica:status/motion_vector/horizon3": $(z3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "+", "h1_$(z1)", "h2_$(z2)", "h3_$(z3)"]}
      $execute if data storage cronica:temp VectorJumper.Signs{Z: 1} run \
        summon minecraft:armor_stand ~ ~ ~0.0001 {Marker:1b,Small:1b,Invisible:1b,Silent:1b,equipment:{chest:{id:stone, \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(z1), "cronica:status/motion_vector/horizon2": $(z2), "cronica:status/motion_vector/horizon3": $(z3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "-", "h1_$(z1)", "h2_$(z2)", "h3_$(z3)"]}
      $execute if data storage cronica:temp VectorJumper.Signs{Z: -1} run \
        summon minecraft:armor_stand ~ ~ ~0.0001 {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: stone, \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(z1), "cronica:status/motion_vector/horizon2": $(z2), "cronica:status/motion_vector/horizon3": $(z3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "+", "h1_$(z1)", "h2_$(z2)", "h3_$(z3)"]}
      $execute if data storage cronica:temp VectorJumper.Signs{Z: -1} run \
        summon minecraft:armor_stand ~ ~ ~-0.0001 {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: stone, \
          components: {enchantments: {"cronica:status/motion_vector/horizon1": $(z1), "cronica:status/motion_vector/horizon2": $(z2), "cronica:status/motion_vector/horizon3": $(z3)}}}}, \
          Tags: ["TAG.cronica.STATUS.MotionVector.MasterStand", "-", "h1_$(z1)", "h2_$(z2)", "h3_$(z3)"]}

    # 同じ位置のエンティティを一時的にTP
      summon armor_stand ~ ~ ~ {Marker: 1b, Small: 1b, Invisible: 1b, Silent: 1b, equipment: {chest: {id: "stone", \
        components: {enchantments: {"cronica:status/motion_vector/tp": 1}}}}, \
        Tags: ["TAG.cronica.STATUS.MotionVector.TpBefore", "TAG.cronica.STATUS.MotionVector.MasterStand"]}
# =================================================================================================
# ver 0.14.0
