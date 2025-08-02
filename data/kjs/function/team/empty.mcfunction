# /function kjs:team/empty {mode: "init", origin: "_", name: "_"}
$data modify storage kjs:var param.mode set value "$(mode)"

### init ###
execute if data storage kjs:var param{mode: init} run function kjs:team/queue/init
execute if data storage kjs:var param{mode: init} run return run function kjs:team/empty with storage kjs:var arg

### loop ###
$team empty $(name)
data modify storage kjs:var arg.name set from storage kjs:team queue[1].name
data modify storage kjs:var arg.origin set value branch
execute if function kjs:team/queue/next run function kjs:team/empty with storage kjs:var arg

# done
$data modify storage kjs:var param.origin set value "$(origin)"
execute if data storage kjs:var param{origin: branch} run return 0
function kjs:message/title/number_of_team_players
function kjs:message/tellraw/announce/team_emptied
