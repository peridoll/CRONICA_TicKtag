
# インベントリ内のすべてのアイテムを対象に指定された関数を実行する

## character_func

Action に与えるパラメータによって実行させるコマンドを変更できる

1. function cronica:player/inventory/full_execute/func/character_func/macro/run {Action: "get"}
    ↓
    cronica:player/character/ikaros/select/flying_feather/get

    各アイテムで get コマンドを発動する

2. function cronica:player/inventory/full_execute/func/character_func/macro/run {Action: "library/leave"}
    ↓
    cronica:player/character/ikaros/select/flying_feather/library/leave

    各アイテムで leave コマンドを発動する

※ 対象のコマンドが存在しない場合はSKIPする
