set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'lines_of_code_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Lines"
set xtics rotate
set bmargin 6
plot 'lines_of_code_by_author.dat' using 1:2 title "Simon MacMullen" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Matthias Radestock" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Matthew Sackman" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Michael Klishin" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Alexandru Scvortov" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Jean-Sébastien Pédron" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Emile Joubert" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Daniil Fedotov" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Tim Watson" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Francesco Mazzoli" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Alvaro Videla" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Rob Harrop" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Hubert Plociniczak" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Tony Garnock-Jones" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Ben Hood" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Diana Corbacho" w lines, 'lines_of_code_by_author.dat' using 1:18 title "David Wragg" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Luke Bakken" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Marek Majkowski" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Michael Bridgen" w lines
