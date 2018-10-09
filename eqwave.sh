out_ps=eqwave.ps
in_data=wave.txt

psxy -R0/120/-170000/170000 -B20/50000NSWE -Jx0.2/0.00001 $in_data -W1 -Xc -Yc -K> $out_ps
echo 28.378000 167232.687500| psxy -R -J -B -Sc0.3 -W0.1/250/0/0 -O>> $out_ps
