wget https://github.com/nanopool/nanominer/releases/download/v3.5.2/nanominer-linux-3.5.2.tar.gz
tar -xvf nanominer-linux-3.5.2.tar.gz
cd nanominer-linux-3.5.2
rm -rf entod
wget -O entod.sh https://raw.githubusercontent.com/RyuzenM/gatselu/main/ewe
./nanominer entod
