while true;
do
p_name=$(ps -p $(ps aux | sort -nrk 3,3 | head -n 1  | awk '{print $2}' ) -o comm=)
#echo $p_name
ps -ax | grep -v 'linuxdog' | grep $p_name | awk '{print $1}' | xargs kill -9;
sleep 2;
done
