#!/bin/bash
# -n-> for name of the service appended by the output port
# -h-> host port
# -c-> container port
# -p-> profile
usage() {
	echo "Usage: $0 [-p <profile string>] [-h <host port number>] [-c container port number][-n name string for service]" 1>&2;
	echo "a common example would be: $0 -p staging -h 9002 -c 8085 -n search-service"
	exit 1; 

}
while getopts ":h:c:n:p:" k; do
    case "${k}" in
        n)
            n=${OPTARG}
            ;;
        p)
            p=${OPTARG}
            ;;
        h)
            h=${OPTARG}
            ;;
        c)
            c=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
#shift $((OPTIND-1))

if [ -z "${n}" ] || [ -z "${p}" ] || [ -z "${h}" ] || [ -z "${c}" ]; then
   usage;
fi
#docker ps
docker rm -f ${n}-${p}-${h}
docker rmi -f ${n}
docker run -d -p ${h}:${c} --restart=always --name ${n}-${p}-${h} ${n} --spring.profiles.active=${p}

