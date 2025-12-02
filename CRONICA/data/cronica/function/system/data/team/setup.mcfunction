
# チーム作成
#[バトル]
team add S "バトル:観戦者"
team add F "バトル:フリー"
team add B "バトル:エネミー"
team add D "バトル:ダイヤモンド"
team add E "バトル:エメラルド"
team add G "バトル:ゴールド"
team add I "バトル:アイアン"
#[ロビー]
team add LD "ロビー:ダイヤモンド"
team add LE "ロビー:エメラルド"
team add LG "ロビー:ゴールド"
team add LI "ロビー:アイアン"

# カラー選択
#[バトル]
team modify S color gray
team modify F color dark_purple
team modify B color white
team modify D color aqua
team modify E color green
team modify G color gold
team modify I color red
#[ロビー]
team modify LD color aqua
team modify LE color green
team modify LG color gold
team modify LI color red

# フレンドリーファイアができないように
#[バトル]
team modify F friendlyFire true
team modify B friendlyFire false
team modify D friendlyFire false
team modify E friendlyFire false
team modify G friendlyFire false
team modify I friendlyFire false

# 名前をみえないように
#[バトル]
team modify F nametagVisibility never
team modify D nametagVisibility hideForOtherTeams
team modify E nametagVisibility hideForOtherTeams
team modify G nametagVisibility hideForOtherTeams
team modify I nametagVisibility hideForOtherTeams

# 当たり判定をなくす
#[バトル]
team modify F collisionRule always
team modify D collisionRule pushOtherTeams
team modify E collisionRule pushOtherTeams
team modify G collisionRule pushOtherTeams
team modify I collisionRule pushOtherTeams

# ver 0.9.2
