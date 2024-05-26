# Bend-Benchmarks

Run the commands:
./benchmark.sh 'bend run factorial/factorial.bend'

chmod +x './benchmark.sh' if permission denied.

Results:

----------------------
Command: bend run factorial/factorial2.bend

real	0m3.205s
user	0m2.722s
sys	0m0.389s

----------------------
Command: bend run factorial/factorial.bend

real	0m4.631s
user	0m3.651s
sys	0m0.720s

----------------------
Command: bend run-c factorial/factorial2.bend

real	0m3.150s
user	0m10.446s
sys	0m13.765s

----------------------
Command: bend run-c factorial/factorial.bend

real	0m4.177s
user	0m13.557s
sys	0m17.874s

----------------------
Command: bend run-cu factorial/factorial2.bend

real	0m0.011s
user	0m0.006s
sys	0m0.004s

----------------------
Command: bend run-cu factorial/factorial.bend

real	0m0.011s
user	0m0.006s
sys	0m0.003s

----------------------


----------------------
Command: java factorial/Factorial

real	0m0.064s
user	0m0.052s
sys	0m0.015s

----------------------
Command: python3 factorial/factorial.py

real	0m0.264s
user	0m0.244s
sys	0m0.008s

----------------------
Command: node factorial/factorial.js

real	0m0.495s
user	0m0.382s
sys	0m0.037s

----------------------


----------------------
Command: bend run tree-sum/tree.bend

real	0m0.011s
user	0m0.006s
sys	0m0.004s

----------------------
Command: bend run-c tree-sum/tree.bend

real	0m0.012s
user	0m0.007s
sys	0m0.007s

----------------------
Command: bend run-cu tree-sum/tree.bend

real	0m0.011s
user	0m0.006s
sys	0m0.003s

----------------------


----------------------
Command: java tree-sum/Tree

real	0m0.067s
user	0m0.055s
sys	0m0.016s

----------------------
Command: python3 tree-sum/tree.py

real	0m0.027s
user	0m0.019s
sys	0m0.006s

----------------------
Command: node tree-sum/tree.js

real	0m0.044s
user	0m0.036s
sys	0m0.006s


