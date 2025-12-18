# =================================================================================================

##【 IMPULSE 】

  ## データ管理

    # 視点方向のベクトル情報を取得

      # 単位ベクトル値取得
        tp @s ^ ^ ^1 ~ ~
        data modify storage cronica:temp VectorJumper.Pos set from entity @s Pos
        execute store result score #VectorMaster_X SCORE.cronica.STATUS.MotionVector.Power run data get storage cronica:temp VectorJumper.Pos[0] 2048
        execute store result score #VectorMaster_Y SCORE.cronica.STATUS.MotionVector.Power run data get storage cronica:temp VectorJumper.Pos[1] 2048
        execute store result score #VectorMaster_Z SCORE.cronica.STATUS.MotionVector.Power run data get storage cronica:temp VectorJumper.Pos[2] 2048

      # xyzの値計算
        scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector.Power *= #VectorMaster SCORE.cronica.STATUS.MotionVector.Power
        scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector.Power *= #VectorMaster SCORE.cronica.STATUS.MotionVector.Power
        scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector.Power *= #VectorMaster SCORE.cronica.STATUS.MotionVector.Power
        scoreboard players operation #VectorMaster_X SCORE.cronica.STATUS.MotionVector.Power /= #2048 SCORE.cronica.CONFIG
        scoreboard players operation #VectorMaster_Y SCORE.cronica.STATUS.MotionVector.Power /= #2048 SCORE.cronica.CONFIG
        scoreboard players operation #VectorMaster_Z SCORE.cronica.STATUS.MotionVector.Power /= #2048 SCORE.cronica.CONFIG

  ## マーカー管理

    # マーカー撤去
      kill @s
# =================================================================================================
# ver 0.14.0
