# =================================================================================================

##【 IMPULSE 】

  ## 指定した数値の強さで視点の方向にかっ飛ばす

    # 各軸方向のベクトル情報を取得

      # マイナスベクトルだった場合、数値を正方向に修正
        $execute if score #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector.Power matches ..-1 run data modify storage cronica:temp VectorJumper.Signs.$(Vector) set value -1
        $execute if data storage cronica:temp VectorJumper.Signs{$(Vector): -1} run scoreboard players operation #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector.Power *= #-1 SCORE.cronica.CONFIG

      # 各単位ごとの値を取得
        $execute store result storage cronica:temp VectorJumper.Macro.$(Vector)1 int 0.0001 run scoreboard players get #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector.Power
        $execute store result storage cronica:temp VectorJumper.Macro.$(Vector)2 int 0.01 run scoreboard players operation #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector.Power %= #10000 SCORE.cronica.CONFIG
        $execute store result storage cronica:temp VectorJumper.Macro.$(Vector)3 int 1 run scoreboard players operation #VectorMaster_$(Vector) SCORE.cronica.STATUS.MotionVector.Power %= #100 SCORE.cronica.CONFIG

      # 0だった場合、100に修正
        $execute if data storage cronica:temp VectorJumper.Macro{$(Vector)1: 0} run data modify storage cronica:temp VectorJumper.Macro.$(Vector)1 set value 100
        $execute if data storage cronica:temp VectorJumper.Macro{$(Vector)2: 0} run data modify storage cronica:temp VectorJumper.Macro.$(Vector)2 set value 100
        $execute if data storage cronica:temp VectorJumper.Macro{$(Vector)3: 0} run data modify storage cronica:temp VectorJumper.Macro.$(Vector)3 set value 100
# =================================================================================================
# ver 0.14.0
