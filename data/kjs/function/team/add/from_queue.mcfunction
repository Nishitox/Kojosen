function kjs:team/add/guest with storage kjs:team queue[0]
execute if function kjs:team/queue/next run function kjs:team/add/from_queue
