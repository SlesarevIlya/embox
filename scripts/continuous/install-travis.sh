TEMPLATE="$1"

case $TEMPLATE in
arm/*)
  sudo apt-get install -qq gcc-arm-embedded  
  sudo apt-get install -qq qemu qemu-system
  ;;
x86/*)
  sudo apt-get install -qq gcc-arm-embedded
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq qemu qemu-system
  ;;
microblaze/*)
  sudo apt-get install -qq microblaze-elf-gcc
  ;;
sparc/*)
  sudo apt-get install -qq sparc-elf-gcc
  ;;
mipc/*)
  sudo apt-get install --qq mipc-elf-gcc
  ;;
ppc/*)
  sudo apt-get install --qq ppc-elf-gcc
  ;;
esac
