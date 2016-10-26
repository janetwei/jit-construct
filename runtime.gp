reset
set ylabel 'time(sec)'
set style fill solid
set title 'perfomance comparison'
set term png enhanced font 'Verdana,10'
set output 'runtime.png'

plot [:][:0.150]'result_time.txt' using 2:xtic(1) with histogram title 'original', \
'' using ($0):($2+3):2 with labels title ' ', \
'' using 3:xtic(1) with histogram title 'optimized'  , \
'' using ($0):($3+3):3 with labels title ' '
