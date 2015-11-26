#!/bin/bash

# Get build status from tmp file
if [ -f 'exit_code.tmp' ];
then
   exit_code=$(cat exit_code.tmp)
   rm -f exit_code.tmp
else
   exit_code=1
fi

# exit with build status
echo $exit_code
exit $exit_code