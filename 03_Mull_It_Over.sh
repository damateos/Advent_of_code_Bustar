cat input/031_example_data | grep -oP "mul\([0-9]*,[0-9]*\)" | sed -e 's/[^0-9|,]//g' | gawk -F"," '{mul=$1*$2; sum+=mul} END{print sum;}'

# Parte 2

cat input/032_example_data | tr '\n' ' ' | perl -p -e  "s/don't().*?do\(\)//g" | grep -oP "mul\([0-9]*,[0-9]*\)" | sed -e 's/[^0-9|,]//g' | gawk -F"," '{mul=$1*$2; sum+=mul} END{print sum;}'

