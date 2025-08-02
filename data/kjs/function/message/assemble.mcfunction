# initialize
data remove storage kjs:message assembled_actionbar
data remove storage kjs:message assembled_title

# actionbar
execute if data storage kjs:team {enabled_teams: {blue:   true}} run data modify storage kjs:message assembled_actionbar append from storage kjs:message $(actionbar.players.blue)
execute if data storage kjs:team {enabled_teams: {green:  true}} run data modify storage kjs:message assembled_actionbar append from storage kjs:message actionbar.players.green
execute if data storage kjs:team {enabled_teams: {red:    true}} run data modify storage kjs:message assembled_actionbar append from storage kjs:message actionbar.players.red
execute if data storage kjs:team {enabled_teams: {yellow: true}} run data modify storage kjs:message assembled_actionbar append from storage kjs:message actionbar.players.yellow

# title
execute if data storage kjs:team {enabled_teams: {blue:   true}} run data modify storage kjs:message assembled_title append from storage kjs:message title.number_of_team_players.blue
execute if data storage kjs:team {enabled_teams: {green:  true}} run data modify storage kjs:message assembled_title append from storage kjs:message title.number_of_team_players.green
execute if data storage kjs:team {enabled_teams: {red:    true}} run data modify storage kjs:message assembled_title append from storage kjs:message title.number_of_team_players.red
execute if data storage kjs:team {enabled_teams: {yellow: true}} run data modify storage kjs:message assembled_title append from storage kjs:message title.number_of_team_players.yellow

