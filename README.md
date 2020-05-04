# arch-config
Non UEFI installation steps (with ethernet):

fdisk /dev/sdX
mkfs.ext4 /dev/sdXY
pacman -Syy
pacman -S reflector
reflector -c "BG" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist
mount /dev/sdXY /mnt
pacstrap base base-devel vim git linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
timedatectl set-timezone Europe/Sofia
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LANG=en_US.UTF-8
pacman -S networkmanager
systemctl enable NetworkManager
echo (hostname) > /etc/hostname
vim /etc/hosts
127.0.0.1 localhost ::1 localhost 127.0.1.1 (hostname)

passwd
pacman -S grub
grub-install /dev/sdX
grub-mkconfig -o /boot/grub/grub.cfg
pacman -S xorg dmenu xorg-xinit
pacman -S bspwm sxhkd
useradd -m username
vim /etc/sudoers
copy line with root privileges and replace root with user

su user
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
copy attached file to ~/.config/sxhkd/sxhkdrc
pacman -S xwallpaper
pacman -S termite (copy config to ~/.config/termite/config/config)
pacman -S xcompmgr
pacman -S yay (aur manager)
yay polybar-git
yay numlockontty vim ~/.xinitrc
xwallpaper --stretch directory/image 
xcompmgr & 
numlockx & 
setxkbmap en,bg 
setxkbmap -option 
setxkbmap -option "grp:alt_shift_toggle" 
polybar example & 
exec bspwm

startx
copy .bashrc with aliases to ~/
image viewer - qiv
pulseaudio
ncpamixer
pacman -S tty-clock
