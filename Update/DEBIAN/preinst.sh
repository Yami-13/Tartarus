#Pre-install script for Tartarus
touch tartarusd.service /$USER/.config/systemd/user
echo -e "[Unit]\nDescription=nothing\n \n[Service]\nType=simple\nStandardOutput=journal\nExecStart=/usr/local/bin/tartarus.sh\n \n[Install]\nWantedBy=default.target" > /$USER/.config/systemd/user/tartarusd.service
