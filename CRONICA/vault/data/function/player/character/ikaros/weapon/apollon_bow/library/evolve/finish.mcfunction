# =================================================================================================

##【 IMPULSE 】

  ## アイテム置き換え

    # モードチェンジ
      execute if score @s[tag =! TAG.cronica.SKILL.begin_twilight.Activated] SCORE.cronica.MODE.apollon_bow matches 1 run \
        function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/unevolve

  ## 後続処理

    # スコアリセット
      function cronica:player/character/ikaros/weapon/apollon_bow/library/evolve/reset
# =================================================================================================
# ver 0.13.0
