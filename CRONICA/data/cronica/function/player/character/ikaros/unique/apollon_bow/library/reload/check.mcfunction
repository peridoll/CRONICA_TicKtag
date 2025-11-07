# =================================================================================================

##【 IMPULSE 】

  ## 所持確認

    # 一時タグ削除
      tag @s remove TAG.cronica.INVENTORY.apollon_bow.Has

    # 所持確認
      function cronica:player/character/ikaros/unique/apollon_bow/library/reload/macro/check_lib with storage cronica:temp ApollonBowReload

  ## 後続処理呼び出し

    # リロード処理
      execute if entity @s[tag = TAG.cronica.INVENTORY.apollon_bow.Has] run \
        function cronica:player/character/common/charge/macro/run with storage cronica:config ApollonBowReload

    # タグ付与
      tag @s add TAG.cronica.INVENTORY.apollon_bow.Has
# =================================================================================================
# ver 0.11.0
