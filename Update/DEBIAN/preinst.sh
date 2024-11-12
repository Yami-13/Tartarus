#Pre-install script for tartar sauce

#Establishes tartar sauce directory
mkdir -p /root/.tartarus
cp 

#Establishes and sets up tartar sauce service as root user
touch /etc/systemd/system/tartarusd.service
echo -e "[Unit]\nDescription=nothing\n \n[Service]\nType=simpleways\nRestartSec=1\nUser=root\nExecStart=/root/.tartarus/tartarus.sh\n \n[Install]\nWant\nRestart=aledBy=default.target" > /etc/systemd/system/tartarusd.service
