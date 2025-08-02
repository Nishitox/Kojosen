title @a times 0 80 20
execute if score #victory kjs.control matches 1 run title @a title ["",    {"interpret":true, "nbt":"title.victory.blue",   "storage":"kjs:message"}]
execute if score #victory kjs.control matches 2 run title @a title ["",    {"interpret":true, "nbt":"title.victory.green",  "storage":"kjs:message"}]
execute if score #victory kjs.control matches 3 run title @a title ["",    {"interpret":true, "nbt":"title.victory.red",    "storage":"kjs:message"}]
execute if score #victory kjs.control matches 4 run title @a title ["",    {"interpret":true, "nbt":"title.victory.yellow", "storage":"kjs:message"}]
execute if score #victory kjs.control matches 5 run title @a title ["",    {"interpret":true, "nbt":"title.defeat.blue",    "storage":"kjs:message"}]
execute if score #victory kjs.control matches 6 run title @a title ["",    {"interpret":true, "nbt":"title.defeat.green",   "storage":"kjs:message"}]
execute if score #victory kjs.control matches 7 run title @a title ["",    {"interpret":true, "nbt":"title.defeat.red",     "storage":"kjs:message"}]
execute if score #victory kjs.control matches 8 run title @a title ["",    {"interpret":true, "nbt":"title.defeat.yellow",  "storage":"kjs:message"}]
execute if score #victory kjs.control matches 9..12 run title @a title ["",{"interpret":true, "nbt":"common.game_end",      "storage":"kjs:message"}]
execute if score #victory kjs.control matches 13.. run function kjs:message/subtitle/game_end
