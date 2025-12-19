# =================================================================================================

##【 IMPULSE 】

  ## 向いている方向から分解ベクトルを取得

    # 単位ベクトル値取得
      tp @s ^ ^ ^1 ~ ~
      data modify storage cronica:temp Pos set from entity @s Pos
      execute store result score #VectorMaster_X SCORE.cronica.STATUS.MotionVector run data get storage cronica:temp Pos[0] 2048
      execute store result score #VectorMaster_Y SCORE.cronica.STATUS.MotionVector run data get storage cronica:temp Pos[1] 2048
      execute store result score #VectorMaster_Z SCORE.cronica.STATUS.MotionVector run data get storage cronica:temp Pos[2] 2048

    # xyzの値計算
      scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector *= #VectorMaster SCORE.cronica.STATUS.MotionVector
      scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector *= #VectorMaster SCORE.cronica.STATUS.MotionVector
      scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector *= #VectorMaster SCORE.cronica.STATUS.MotionVector
      scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector /= #2048 SCORE.cronica.CONFIG
      scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector /= #2048 SCORE.cronica.CONFIG
      scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector /= #2048 SCORE.cronica.CONFIG

  ## 撤去

    # マーカー消去
      kill @s
# =================================================================================================
# ver 0.14.0
