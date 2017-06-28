TEMPLATE="$1"

case $TEMPLATE in
arm/*)
  sudo apt-get install -qq gcc-arm-embedded  
  sudo apt-get install -qq qemu qemu-system
  ;;
esac

if [ $TEMPLATE == x86/qemu ]
then
  sudo apt-get install -qq gcc-arm-embedded
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq qemu qemu-system
fi

if [ $TEMPLATE == x86/test/lang ]
then
  sudo apt-get install -qq gcc-arm-embedded
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq qemu qemu-system
fi
