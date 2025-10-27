# =================================================================================================

## CRONICA - player/status/tick.mcfunction
# プレイヤー関連の常在処理や検知を行う関数

##【 継続処理 】

  # リスポーンポイント管理
  # /* 死亡時にその場で解放させるためのリス地固定 */
    # execute as @a[tag = TAG.cronica.GAMING, tag =! TAG.cronica.GAMING.spectate] at @s if block ~ ~ ~ minecraft:air run spawnpoint @s ~ ~ ~ ~

  # 死亡時処理
    # function cronica:player/status/death/run

  # 行動検知管理
    function cronica:player/status/detection/tick

  # エフェクト管理 < ゲーム中 >
    execute as @a[tag = TAG.cronica.GAMING] run function cronica:player/status/effect/main
# =================================================================================================
# ver 0.10.3
