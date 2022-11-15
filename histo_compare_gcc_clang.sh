set terminal png font "arial,10" fontscale 1.0 size 800, 500 
set output "graph_clang_gcc_all.png"
set title "GCC VS CLANG" font "bold,10"
set style data histogram
#set style histogram clustered gap 1 title offset 2,0.25
set style fill solid noborder
set boxwidth 1.2
set bmargin 10
set style fill   solid 1.00 noborder
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics nortics nomrtics 
set border 3 front lt black linewidth 1.000 dashtype solid
#unset xtics
unset key
set xtics nomirror rotate by -90 scale 0 font ",8"
set ytics font ",8"
set grid layerdefault   lt 0 linecolor 0 linewidth 0.500,  lt 0 linecolor 0 linewidth 0.500
set grid y
set auto y
set ylabel "Mib/s" font "bold" 
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set xtics  norangelimit  font ",8"
set xtics   ()
#set xlabel "les verions du programme" font "bold"
set datafile separator ";"
#plot 'clang_o3.dat' using 7:xtic(1) ti col, '' u 8 ti col, '' u 9 ti col, '' u 10 ti col, '' u 11 #ti col 
plot \
newhistogram "GCC O0", \
'gcc_o0.dat' using 12:xtic(1) ti col, \
newhistogram "GCC O1", \
'gcc_o1.dat' using 12:xtic(1) ti col, \
newhistogram "GCC O2", \
'gcc_o2.dat' using 12:xtic(1) ti col, \
newhistogram "GCC O3", \
'gcc_o3.dat' using 12:xtic(1) ti col, \
newhistogram "CLANG O0", \
'clang_o0.dat' using 12:xtic(1) ti col,\
newhistogram "CLANG O1", \
'clang_o1.dat' using 12:xtic(1) ti col,\
newhistogram "CLANG O2", \
'clang_o2.dat' using 12:xtic(1) ti col,\
newhistogram "CLANG O3", \
'clang_o3.dat' using 12:xtic(1) ti col,\
#newhistogram "O2", \
#'clang_o2.dat' using 11:xtic(1) ti col, \
#newhistogram "O3", \
#'clang_o3.dat' using 11:xtic(1) ti col, \
#newhistogram "Ofast", \
#'clang_ofast.dat' using 11:xtic(1) ti col
