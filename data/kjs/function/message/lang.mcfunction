# initialize
data remove storage kjs:message common
data remove storage kjs:message actionbar
data remove storage kjs:message title
data remove storage kjs:message tellraw

# common
data modify storage kjs:message common merge value {game_start :["",{"text":"試合開始"}]}
data modify storage kjs:message common merge value {game_end   :["",{"text":"試合終了"}]}
data modify storage kjs:message common merge value {victory: ["",{"text":"チームの勝利"}]}
data modify storage kjs:message common merge value {defeat:  ["",{"text":"チームの敗北"}]}
data modify storage kjs:message common merge value {joined_to_team:  ["",{"text":"チームに参加しました。"}]}
data modify storage kjs:message common merge value {changed_to_team: ["",{"text":"チームに変更されました。"}]}

# actionbar: players
data modify storage kjs:message actionbar merge value {players: {everyone: ["",{"score":{"name":"#everyone","objective":"kjs.players"}},{"text":"人が参加中"}]}}
data modify storage kjs:message actionbar merge value {players: {blue:     ["",{"text":" 🛡 ","color":"blue"},  {"score":{"name":"#blue",  "objective":"kjs.players"}},{"text":" "}]}}

# actionbar: cowntdown/time/timer
data modify storage kjs:message actionbar merge value {countdown: ["",{"text":"試合開始まであと"},{"score":{"name":"#timer_m","objective":"kjs.control"}},{"text":":"},{"score":{"name":"#timer_s","objective":"kjs.control"}}]}
data modify storage kjs:message actionbar merge value {time:  ["",{"text":" 🧪 "},{"score":{"name":"#time_m", "objective":"kjs.control"}},{"text":":"},{"score":{"name":"#time_s", "objective":"kjs.control"}}]}
data modify storage kjs:message actionbar merge value {timer: ["",{"text":" 🧪 "},{"score":{"name":"#timer_m","objective":"kjs.control"}},{"text":":"},{"score":{"name":"#timer_s","objective":"kjs.control"}}]}


# title: game end
data modify storage kjs:message title merge value {victory: {blue:   ["",{"text":"チームの勝利",  "color":"blue"}]}}
data modify storage kjs:message title merge value {defeat:  {blue:   ["",{"text":"チームの敗北",  "color":"blue"}]}}

# title: number of team players
data modify storage kjs:message title merge value {number_of_team_players: {blue:   ["",{"score":{"name":"#blue",  "objective":"kjs.players"},"color":"blue"}]}}


# tellraw: announce
data modify storage kjs:message tellraw merge value {label:{announce: ["",{"text":"\n[kjs:announce] ","color":"gray"}]}}
data modify storage kjs:message tellraw merge value {announce: {elapsed_time: {ms:["",{"text":"経過時間は"},{"score":{"name":"#time_m","objective":"kjs.control"}},{"text":"分"},{"score":{"name":"#time_s","objective":"kjs.control"}},{"text":"秒でした。"}]}}}
data modify storage kjs:message tellraw merge value {announce: {elapsed_time: {m: ["",{"text":"経過時間は"},{"score":{"name":"#time_m","objective":"kjs.control"}},{"text":"分でした。"}]}}}
data modify storage kjs:message tellraw merge value {announce: {elapsed_time: {s: ["",{"text":"経過時間は"},{"score":{"name":"#time_s","objective":"kjs.control"}},{"text":"秒でした。"}]}}}
data modify storage kjs:message tellraw merge value {announce: {time_left:    {ms:["",{"text":"残り"},{"score":{"name":"#timer_m","objective":"kjs.control"}},{"text":"分"},{"score":{"name":"#timer_s","objective":"kjs.control"}},{"text":"秒でした。"}]}}}
data modify storage kjs:message tellraw merge value {announce: {time_left:    {m: ["",{"text":"残り"},{"score":{"name":"#timer_m","objective":"kjs.control"}},{"text":"分でした。"}]}}}
data modify storage kjs:message tellraw merge value {announce: {time_left:    {s: ["",{"text":"残り"},{"score":{"name":"#timer_s","objective":"kjs.control"}},{"text":"秒でした。"}]}}}

# tellraw: notice
data modify storage kjs:message tellraw merge value {label:{notice:   ["",{"text":"\n[kjs:notice] ",  "color":"gray"}]}}
data modify storage kjs:message tellraw merge value {notice: {team_assigned: ["",{"text":"プレイヤーをチームに割り振りました。"}]}}
data modify storage kjs:message tellraw merge value {notice: {team_changed:  ["",{"text":"プレイヤーのチームを入れ替えました。"}]}}
data modify storage kjs:message tellraw merge value {notice: {team_emptied:  ["",{"text":"チームを空にしました。"}]}}
data modify storage kjs:message tellraw merge value {notice: {setup_executed:                 ["",{"text":"セットアップを実行しました。セットアップの詳細は\n"},{"text":"datapacks:kjs 2.3.0/data/kjs/functions/setup","color":"yellow"},{"text":" から確認してください。"}]}}
data modify storage kjs:message tellraw merge value {notice: {setup_with_formatting_executed: ["",{"text":"初期化セットアップを実行しました。セットアップの詳細は\n"},{"text":"datapacks:kjs 2.3.0/data/kjs/functions/setup_with_formatting","color":"yellow"},{"text":" から確認してください。"}]}}

# tellraw: error
data modify storage kjs:message tellraw merge value {label:{error:    ["",{"text":"\n[kjs:error] ",   "color":"red"}]}}
data modify storage kjs:message tellraw merge value {error: {failed_to_change_teams: ["",{"text":"チームが1つしか選択されていません。"}]}}
data modify storage kjs:message tellraw merge value {error: {no_team_selected:       ["",{"text":"チームが選択されていません。"}]}}
data modify storage kjs:message tellraw merge value {error: {player_does_not_exist:  ["",{"text":"有効なプレイヤーが存在しません。"}]}}
