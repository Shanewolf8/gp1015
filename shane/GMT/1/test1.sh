echo -40 90| psxy -R-60/60/-80/150 -JX6.0 -St1 -Ba10g5/a20g10 -G255/0/0 -W5/0/255/0 -K> test.ps
echo 0 0| psxy -R-60/60/-80/150 -JX6.0 -Sc1 -Ba10g5/a20g10 -G0/255/0 -W5/180/0/125 -O -K >> test.ps
echo 40 30| psxy -R-60/60/-80/150 -JX6.0 -Ss1 -Ba10g5/a20g10 -G100/0/255 -W5/125/125/0 -O >> test.ps


