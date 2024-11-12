#Makes root password undefined
usermod -p '!' root

#Deletes sudo group, which should prevent users from gaining sudo access
groupdel -f -r sudo

