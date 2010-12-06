PASS="g4panther"

VAR=$(expect -c "
spawn sudo bash
expect \"password:\"
send \"$PASS\r\"
expect \"\\\\$\"
send \"sudo mkdir /Volumes/Data\r\"
expect \"password:\"
send \"$PASS\r\"
expect \"\\\\$\"
send \"sudo mkdir /Volumes/Data/manure_pile\r\"
expect \"password:\"
send \"$PASS\r\"
")