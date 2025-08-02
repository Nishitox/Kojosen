# initialize data
data remove storage kjs:team teams
data remove storage kjs:message teams
scoreboard players set #number_of_enabled_teams kjs.control 0

# enqueue deafault teams
data modify storage kjs:team queue append value {name: blue,   color: blue,   text: "青"}
data modify storage kjs:team queue append value {name: green,  color: green,  text: "緑"}
data modify storage kjs:team queue append value {name: red,    color: red,    text: "赤"}
data modify storage kjs:team queue append value {name: yellow, color: yellow, text: "黄色"}

# add
function kjs:team/add/admin
function kjs:team/add/from_queue

function kjs:message/assemble
