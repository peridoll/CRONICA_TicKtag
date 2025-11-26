# =================================================================================================

##【 REPEAT 】

  ## 後続処理呼び出し

    # 基本処理呼び出し
      function core:player/character/activate/macro/ct/main { ItemID : "gatling_socket" }

    # 再起処理
      execute if entity @a[scores = {SCORE.cronica.CHARACTER.gatling_socket.CoolTime = -1..}] run \
        schedule function cronica:player/character/deliverdy/select/gatling_socket/library/common/ct 1t
# =================================================================================================
# ver 0.12.0
