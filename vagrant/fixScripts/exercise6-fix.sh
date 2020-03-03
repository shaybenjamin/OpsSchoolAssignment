#!/bin/bash
#add fix to exercise6-fix here

### Validation ###
if [ "$#" -lt "2" ]
then
        echo "Illegal number of parameters"
        exit 0
fi


curServer=`hostname`
remoteServer="server1"
bytesCopied=0


echo $curServer
if [ $curServer == "server1" ]
then
        remoteServer="server2"
fi

destination=${@: -1}
while [ "$#" -gt "1" ]
do
        FILE="$1"
        f=${1##*/}
        fileSize=$(wc -c $1 | awk '{print $1}')
        ((bytesCopied=bytesCopied+fileSize))
        scp $1 $remoteServer:$destination/$f
        shift
done

echo "Total bytes Copied to $remoteServer - $bytesCopied bytes"