import sys
import re

tr_name = sys.argv[1]

res = re.split(r'\.S\d+', tr_name)

name = res[0]

f2 = open('/tmp/name.txt', 'w')
f2.write(name)
f2.close

