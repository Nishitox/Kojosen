# この関数は「execute if function」によってのみ実行される想定の関数であり、
# 「execute if function」は、/returnコマンドによって戻り値が当たられたコマンドが一つもない場合はif構文は失敗、unless構文は通過する。
# よって「return 1」が実行されない限り、処理は必然的にreturn 0相当となる。そのため「return 0」を明示的に省略している。
data remove storage kjs:team queue[0]
execute if data storage kjs:team queue[0] run return 1
