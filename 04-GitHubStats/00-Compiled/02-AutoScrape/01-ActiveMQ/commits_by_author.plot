set terminal png transparent size 640,240
set size 1.0,1.0

set terminal png transparent size 640,480
set output 'commits_by_author.png'
set key left top
set yrange [0:]
set xdata time
set timefmt "%s"
set format x "%Y-%m-%d"
set grid y
set ylabel "Commits"
set xtics rotate
set bmargin 6
plot 'commits_by_author.dat' using 1:2 title "Hiram R. Chirino" w lines, 'commits_by_author.dat' using 1:3 title "Gary Tully" w lines, 'commits_by_author.dat' using 1:4 title "Robert Davies" w lines, 'commits_by_author.dat' using 1:5 title "Bosanac Dejan" w lines, 'commits_by_author.dat' using 1:6 title "James Strachan" w lines, 'commits_by_author.dat' using 1:7 title "Timothy A. Bish" w lines, 'commits_by_author.dat' using 1:8 title "Timothy Bish" w lines, 'commits_by_author.dat' using 1:9 title "gtully" w lines, 'commits_by_author.dat' using 1:10 title "Christopher L. Shannon (cshannon)" w lines, 'commits_by_author.dat' using 1:11 title "Claus Ibsen" w lines, 'commits_by_author.dat' using 1:12 title "Dejan Bosanac" w lines, 'commits_by_author.dat' using 1:13 title "Adrian T. Co" w lines, 'commits_by_author.dat' using 1:14 title "Hiram Chirino" w lines, 'commits_by_author.dat' using 1:15 title "Frederick G. Oconer" w lines, 'commits_by_author.dat' using 1:16 title "Hadrian Zbarcea" w lines, 'commits_by_author.dat' using 1:17 title "Kevin Earls" w lines, 'commits_by_author.dat' using 1:18 title "Jonas B. Lim" w lines, 'commits_by_author.dat' using 1:19 title "Christian Posta" w lines, 'commits_by_author.dat' using 1:20 title "Guillaume Nodet" w lines, 'commits_by_author.dat' using 1:21 title "David Jencks" w lines
