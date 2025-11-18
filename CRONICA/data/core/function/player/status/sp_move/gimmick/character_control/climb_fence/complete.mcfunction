# =================================================================================================

##【 IMPULSE 】

  ## ギミック管理

    # 衝突判定:ブロック
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^ #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^ #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^ ^ ^0.3 #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^ ^ ^-0.3 #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^0.3 #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^0.3 #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^0.3 ^ ^-0.3 #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck
      execute at @s rotated ~ 0 positioned ^ ^1 ^0.1 unless block ^-0.3 ^ ^-0.3 #core:no_collision run tag @s add TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck

    # テレポート
      execute as @s[tag =! TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck] at @s rotated ~ 0 run tp @s ^ ^ ^0.1
      tag @s remove TAG.cronica.STATUS.SpMove.climb_fence.CollisionCheck

  ## 装飾

    # サウンド
      execute at @s run playsound minecraft:block.ladder.step player @a ~ ~ ~ 0.3 1

    # 画面表示
      title @s times 0 60 20
      title @s actionbar [{"text":"CLIMB","color":"gray","bold":false},{"text":"[","color":"blue","bold":false},{"text":"ACTIVATE","color":"aqua","bold":true,"underlined":true},{"text":"]","color":"blue","bold":false},{"text":"CLIMB","color":"gray","bold":false}]
# =================================================================================================
# ver 0.12.0
