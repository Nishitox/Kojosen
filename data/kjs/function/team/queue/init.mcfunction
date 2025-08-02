data modify storage kjs:team queue set from storage kjs:team teams

data modify storage kjs:var arg set value {}
data modify storage kjs:var arg.mode set value loop
data modify storage kjs:var arg.origin set value root
data modify storage kjs:var arg.name set from storage kjs:team queue[0].name
