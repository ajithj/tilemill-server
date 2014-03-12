#!/bin/bash
echo "Getting water polygons."
sudo -u mapbox bash <<EOF
cd /usr/share/mapbox
wget -q http://gis.researchmaps.net/water-polygons-split-3857.zip
sleep 2
unzip water-polygons-split-3857.zip

EOF
echo "Creating sample project"
sudo cp -r starter-map /usr/share/mapbox/project/
mkdir /usr/share/mapbox/project/starter-map/layers/
sudo ln -s /usr/share/mapbox/water-polygons-split-3857 /usr/share/mapbox/project/starter-map/layers/waterpolygons
sudo chown -R mapbox:mapbox /usr/share/mapbox/project/
