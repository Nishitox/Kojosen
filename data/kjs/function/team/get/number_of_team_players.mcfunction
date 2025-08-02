# /function kjs:team/get/number_of_team_players {mode: "init", name: "_", target: "all"}
$data modify storage kjs:var param.mode set value "$(mode)"
$data modify storage kjs:var param.target set value "$(target)"

### init ###
execute if data storage kjs:var param{mode: init} run function kjs:team/queue/init
execute if data storage kjs:var param{mode: init} run data modify storage kjs:var arg.target set from storage kjs:var param.target
execute if data storage kjs:var param{mode: init} run return run function kjs:team/get/number_of_team_players with storage kjs:var arg

### loop ###
$execute if data storage kjs:var param{target: "all"} store result score $(name) kjs.players if entity @a[team=$(name)]
$execute if data storage kjs:var param{target: "!cs"} store result score $(name) kjs.players if entity @a[team=$(name), gamemode=!creative, gamemode=!spectator]
$execute if data storage kjs:var param{target: "!s"} store result score $(name) kjs.players if entity @a[team=$(name), gamemode=!spectator]
data modify storage kjs:var arg.name set from storage kjs:team queue[1].name
execute if function kjs:team/queue/next run function kjs:team/get/number_of_team_players with storage kjs:var arg
