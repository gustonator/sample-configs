echo "Basic setup"
#install ssh
apt-get update
apt-get install -y ssh	

service ssh enable
service ssh start
		
#disable swapping
swapoff -a
#comment it in the fstab
sed -e '/swap/ s/^#*/#/' -i /etc/fstab