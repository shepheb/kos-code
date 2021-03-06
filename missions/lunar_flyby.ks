compile "0:/lib/launch".
copypath("0:/lib/launch.ksm", "").
compile "0:/lib/twr".
copypath("0:/lib/twr.ksm", "").
compile "0:/lib/circularize".
copypath("0:/lib/circularize.ksm", "").
compile "0:/lib/burn".
copypath("0:/lib/burn.ksm", "").
compile "0:/lib/hohmann".
copypath("0:/lib/hohmann.ksm", "").
compile "0:/lib/stepsearch".
copypath("0:/lib/stepsearch.ksm", "").
list files.

wait 2. // Let the physics settle.
runpath("launch", 80000, 1.8).
runpath("circularize").
runpath("burn").
print "Orbit achieved.".

runpath("hohmann", mun, true).
runpath("burn").
