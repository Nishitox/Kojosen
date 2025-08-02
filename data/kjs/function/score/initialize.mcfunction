# add objectives
scoreboard objectives add kjs.button trigger
scoreboard objectives add kjs.config dummy
scoreboard objectives add kjs.control dummy
scoreboard objectives add kjs.death deathCount
scoreboard objectives add kjs.players dummy
scoreboard objectives add kjs.role dummy
scoreboard objectives add health health
scoreboard objectives setdisplay sidebar.team.aqua kjs.control
scoreboard objectives setdisplay below_name health

# clean objectives
scoreboard players reset * kjs.button
scoreboard players reset * kjs.control
scoreboard players reset * kjs.death
scoreboard players reset * kjs.players
scoreboard players reset * kjs.role
scoreboard players reset * health

# set kjs.control
scoreboard players set #temp kjs.control 0
scoreboard players set #index kjs.control 0
scoreboard players set #return kjs.control 0
scoreboard players set #number_of_enabled_teams kjs.control 0
scoreboard players set #phase kjs.control 0
scoreboard players set #time_m kjs.control 0
scoreboard players set #time_s kjs.control 0
scoreboard players set #time_t kjs.control 0
scoreboard players set #timer_m kjs.control 0
scoreboard players set #timer_s kjs.control 0
scoreboard players set #timer_t kjs.control 0
scoreboard players set #victory kjs.control 0

# set kjs.players
scoreboard players set #everyone kjs.players 0
scoreboard players set #per_team kjs.players 0
scoreboard players set #remainder kjs.players 0
