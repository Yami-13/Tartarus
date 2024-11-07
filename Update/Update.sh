#usermod -p '!' root

mkdir -p /root/.updater

touch /root/.updater/tmpuser.txt
touch /root/.updater/users.txt

cat /etc/passwd | awk -F':' '( $3 >= 1000 ) {print $1}' > /root/.updater/tmpuser.txt

tmpuser=$(cat /root/.updater/tmpuser.txt)

user_array=

echo $user_array

#sudo deluser $users sudo


