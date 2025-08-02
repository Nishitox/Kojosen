$team add $(name)
$team empty $(name)

$team modify $(name) collisionRule pushOwnTeam
$team modify $(name) color $(color)
$team modify $(name) deathMessageVisibility never
$team modify $(name) friendlyFire false
$team modify $(name) nametagVisibility always
$team modify $(name) seeFriendlyInvisibles true
$team modify $(name) displayName "$(name)"
$team modify $(name) prefix ""
$team modify $(name) suffix ""

$data modify storage kjs:team teams append value {name: $(name), config: {enabled: false}}
$data modify storage kjs:message teams append value {$(name): {color: $(color), text: "$(text)"}}
