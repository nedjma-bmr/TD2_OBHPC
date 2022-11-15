set terminal png font "arial,10" fontscale 1.0 size 600, 400 
set output "graph_gccVSclang.png"
set title "GCC vs CLANG" font "bold,10"
set style data histogram
set style histogram clustered gap 1 title offset 2,0.25
set style fill solid noborder
set boxwidth 1.2
set bmargin 8
set key bmargin center horizontal Left reverse noenhanced autotitle columnhead nobox
unset key
unset xtics
set xtics nomirror rotate by -45 scale 0 font ",8"
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
newhistogram "Clang", \
'clang_o0.dat' using 12:xtic(1) ti col, \
'clang_o1.dat' using 12:xtic(1) ti col, \
'clang_o2.dat' using 12:xtic(1) ti col, \
'clang_o3.dat' using 12:xtic(1) ti col, \
'clang_ofast.dat' using 12:xtic(1) ti col, \
newhistogram "GCC", \
'gcc_o0.dat' using 12:xtic(1) ti col, \
'gcc_o1.dat' using 12:xtic(1) ti col, \
'gcc_o2.dat' using 12:xtic(1) ti col, \
'gcc_o3.dat' using 12:xtic(1) ti col, \
'gcc_ofast.dat' using 12:xtic(1) ti col


