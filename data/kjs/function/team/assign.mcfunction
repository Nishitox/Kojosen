# /function kjs:team/assign {mode: "init", origin: "_", name: "_"}
$data modify storage kjs:var param.mode set value "$(mode)"

### init ###
execute if data storage kjs:var param{mode: init} unless entity @a[team=] run return run function kjs:message/tellraw/error/player_does_not_exist
execute if data storage kjs:var param{mode: init} unless function kjs:team/get/players_per_team unless function kjs:team/queue/init run return run function kjs:team/assign with storage kjs:var arg

### loop ###

# not enable
execute if data storage kjs:team queue[0].config{enabled: false} run return run execute if function kjs:team/queue/next run function kjs:team/assign with storage kjs:var arg

# #per_team - number of assigned players = number of assignable_players
scoreboard players operation #temp kjs.control = #per_team kjs.players
$scoreboard players operation #temp kjs.control -= $(name) kjs.players

# consume one remainder
execute if score #remainder kjs.players matches 1.. run scoreboard players add #temp kjs.control 1
execute if score #remainder kjs.players matches 1.. run scoreboard players remove #remainder kjs.players 1

# assign
execute store result storage kjs:var arg.limit int 1 run scoreboard players get #temp kjs.control
function kjs:team/assign/guest with storage kjs:var arg

# next
data modify storage kjs:var arg.name set from storage kjs:team queue[1].name
data modify storage kjs:var arg.origin set value branch
execute if function kjs:team/queue/next run function kjs:team/assign with storage kjs:var arg

### done ###
$data modify storage kjs:var param.origin set value "$(origin)"
execute if data storage kjs:var param{origin: branch} run return 0
function kjs:message/title/number_of_team_players
function kjs:message/tellraw/announce/team_assigned
