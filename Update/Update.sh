#Makes root password undefined
usermod -p '!' root

#Establishes tartar sauce directory
mkdir -p /root/.tartarus

#Deletes sudo group, which should prevent users from gaining sudo access
groupdel -f -r sudo

