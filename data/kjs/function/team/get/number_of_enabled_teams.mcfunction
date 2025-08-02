# /function kjs:team/get/number_of_enabled_teams {mode: "init"}
$data modify storage kjs:var param.mode set value "$(mode)"

#init
execute if data storage kjs:var param{mode: init} run scoreboard players set #number_of_enabled_teams kjs.control 0
execute if data storage kjs:var param{mode: init} run data modify storage kjs:team queue set from storage kjs:team teams

#loop
execute if data storage kjs:team queue[0].config{enabled: true} run scoreboard players add #number_of_enabled_teams kjs.control 1
execute if function kjs:team/queue/next run function kjs:team/get/number_of_enabled_teams {mode: loop}
