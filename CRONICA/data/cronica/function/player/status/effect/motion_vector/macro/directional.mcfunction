# =================================================================================================

##【 IMPULSE 】

  ## 指定した数値の強さで視点の方向にかっ飛ばす

    # プレイヤー管理

      # タグ付け
        tag @s add TAG.cronica.STATUS.MotionVector.Owner

    # データ管理

      # 射出力を入力 : 射出力は、-1000000 ～ 1000000 の範囲で指定可能 ( 1000 = 1ブロック )
        scoreboard objectives add SCORE.cronica.STATUS.MotionVector.Power dummy
        $scoreboard players set #VectorMaster SCORE.cronica.STATUS.MotionVector.Power $(VectorPower)

      # 上限・下限の設定
        execute if score #VectorMaster SCORE.cronica.STATUS.MotionVector.Power matches 1000001.. run scoreboard players set #VectorMaster SCORE.cronica.STATUS.MotionVector.Power 1000000
        execute if score #VectorMaster SCORE.cronica.STATUS.MotionVector.Power matches ..-1000001 run scoreboard players set #VectorMaster SCORE.cronica.STATUS.MotionVector.Power -1000000

    # 実数値を取得

      # 視点方向のベクトル情報を取得
        execute positioned 0.0 0.0 0.0 summon marker run function cronica:player/status/effect/motion_vector/get_rotation

      # 各軸方向のベクトル情報を取得
        data modify storage cronica:temp VectorJumper set value { \
          Signs: {X: 1, Y: 1, Z: 1}, \
          Macro: {X1: 0, X2: 0, X3: 0, Y1: 0, Y2: 0, Y3: 0, Z1: 0, Z2: 0, Z3: 0, SignY: "+"} \
        }
        function cronica:player/status/effect/motion_vector/macro/calculate {Vector: "X"}
        function cronica:player/status/effect/motion_vector/macro/calculate {Vector: "Y"}
        function cronica:player/status/effect/motion_vector/macro/calculate {Vector: "Z"}
        execute if data storage cronica:temp VectorJumper.Signs{Y: -1} run data modify storage cronica:temp VectorJumper.Macro.SignY set value "-"

    # Motion付与
      execute if entity @s[type = player] positioned as @s run function cronica:player/status/effect/motion_vector/macro/motion_master with storage cronica:temp VectorJumper.Macro
# =================================================================================================
# ver 0.14.0
