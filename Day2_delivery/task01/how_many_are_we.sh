#!/bin/bash
#!/bin/bash

if [ $# -eq 0 ]; then
    wc -l < students.csv
else
    awk -F';' -v city="$1" '$3 == city { count++ } END { print count }' students.csv
fi

