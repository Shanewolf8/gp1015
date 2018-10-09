out_ps=report.ps

makecpt -T0/100/15 -Csplit -Z > depth.cpt


# background
psbasemap -Ba1f1/a1f1::EwNs -Jm3 -R119/123/21/26 -G0/250/250 -K -Y8 -X1 -P> report.ps
# coastline
pscoast -J -B -R -O -Di -W1 -G250/250/0 -K -O >> report.ps

# earthquake location
echo 121.29 22.83| psxy -R -J -B -Sa0.5 -W0.01 -G250/0/0 -K -O>> report.ps
#psxy eq.list -J -B -R -Sc0.01 -W0.01 -G255/0/0 -O>> report.ps
awk '{ if ($4<3) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.01 -Cdepth.cpt -K -O>> report.ps
awk '{ if ($4>=3 && $4<4) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.1 -Cdepth.cpt -K -O>> report.ps
awk '{ if ($4>=4 && $4<5) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.3 -Cdepth.cpt -K -O>> report.ps
awk '{ if ($4>=5) print $1, $2, $3}' eq.list| psxy -J -B -R -Sc0.6 -Cdepth.cpt -O -K>> report.ps

  

#bottom map
psbasemap -R119/123/0/315 -Jx3/-0.01 -Ba1f1/a100f20 -X0 -Y-5 -O -K>> report.ps
awk '{if ($4<3) print $1, $3, $3}' eq.list| psxy -J -B -R -Sc0.01 -Cdepth.cpt -K -O>> report.ps
awk '{if ($4>=3 && $4<4) print $1, $3, $3}' eq.list| psxy -J -B -R -Sc0.1 -Cdepth.cpt -K -O>> report.ps
awk '{if ($4>=3 && $4<4) print $1, $3, $3}' eq.list| psxy -J -B -R -Sc0.1 -Cdepth.cpt -K -O>> report.ps
awk '{if ($4>=5) print $1, $3, $3}' eq.list| psxy -J -B -R -Sc0.6 -Cdepth.cpt -K -O>> report.ps


#side map
psbasemap -R0/315/21/26 -Jx0.01/3.25 -Ba100f20/a1f1 -X14 -Y5 -O -K >> report.ps
awk '{if ($4<3) print $3, $2, $3}' eq.list| psxy -J -B -R -Sc0.01 -Cdepth.cpt -K -O>> report.ps
awk '{if ($4>=3 && $4<4) print $3, $2, $3}' eq.list| psxy -J -B -R -Sc0.1 -Cdepth.cpt -K -O>> report.ps
awk '{if ($4>=4 && $4<5) print $3, $2, $3}' eq.list| psxy -J -B -R -Sc0.3 -Cdepth.cpt -K -O>> report.ps
awk '{if ($4>=5) print $3, $2, $3}' eq.list| psxy -J -B -R -Sc0.6 -Cdepth.cpt -O>> report.ps



