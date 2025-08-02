function kjs:score/store/everyone
function kjs:team/get/number_of_team_players {mode: "init", name: "_", target: "all"}
function kjs:team/get/number_of_enabled_teams {mode: "init"}

# #everyone / #number_of_enabled_teams = players per team
scoreboard players operation #per_team kjs.players = #everyone kjs.players
scoreboard players operation #per_team kjs.players /= #number_of_enabled_teams kjs.control

# #everyone % #number_of_enabled_teams = remainder players
scoreboard players operation #remainder kjs.players = #everyone kjs.players
scoreboard players operation #remainder kjs.players %= #number_of_enabled_teams kjs.control
