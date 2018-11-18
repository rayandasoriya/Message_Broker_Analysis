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
plot 'lines_of_code_by_author.dat' using 1:2 title "Ismael Juma" w lines, 'lines_of_code_by_author.dat' using 1:3 title "Jun Rao" w lines, 'lines_of_code_by_author.dat' using 1:4 title "Guozhang Wang" w lines, 'lines_of_code_by_author.dat' using 1:5 title "Jason Gustafson" w lines, 'lines_of_code_by_author.dat' using 1:6 title "Matthias J. Sax" w lines, 'lines_of_code_by_author.dat' using 1:7 title "Rajini Sivaram" w lines, 'lines_of_code_by_author.dat' using 1:8 title "Neha Narkhede" w lines, 'lines_of_code_by_author.dat' using 1:9 title "Damian Guy" w lines, 'lines_of_code_by_author.dat' using 1:10 title "Ewen Cheslack-Postava" w lines, 'lines_of_code_by_author.dat' using 1:11 title "Eno Thereska" w lines, 'lines_of_code_by_author.dat' using 1:12 title "Vahid Hashemian" w lines, 'lines_of_code_by_author.dat' using 1:13 title "Grant Henke" w lines, 'lines_of_code_by_author.dat' using 1:14 title "Jay Kreps" w lines, 'lines_of_code_by_author.dat' using 1:15 title "Bill Bejeck" w lines, 'lines_of_code_by_author.dat' using 1:16 title "Dong Lin" w lines, 'lines_of_code_by_author.dat' using 1:17 title "Yasuhiro Matsuda" w lines, 'lines_of_code_by_author.dat' using 1:18 title "Colin P. Mccabe" w lines, 'lines_of_code_by_author.dat' using 1:19 title "Jiangjie Qin" w lines, 'lines_of_code_by_author.dat' using 1:20 title "Joe Stein" w lines, 'lines_of_code_by_author.dat' using 1:21 title "Ashish Singh" w lines
