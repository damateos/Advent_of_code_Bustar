cat 031_example_data | grep -oP "mul\([0-9]*,[0-9]*\)" | sed -e 's/[^0-9|,]//g' | gawk -F"," '{mul=$1*$2; sum+=mul} END{print sum;}'
