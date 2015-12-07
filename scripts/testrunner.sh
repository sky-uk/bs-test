#!/bin/bash

ip=$1
unit_test_folder=$2
test_results_file=$3

echo "*** Starting Testing ***"

# Run tests - set default timeout to 30
$2/runtests.sh $ip ${TESTRUNNER_TIMEOUT:=10}| tee out.tmp
wait

# convert to xUnit
$2/sum2junit.sh out.tmp $3

# delete out.tmp 
rm -f out.tmp


# Finished!
echo "*** Finished Testing ***"

