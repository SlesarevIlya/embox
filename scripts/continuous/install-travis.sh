TEMPLATE="$1"
if TEMPLATE = arm/qemu
then
  sudo apt-get install -qq gcc-arm-embedded  
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq u-boot-tools
  sudo apt-get install -qq qemu qemu-system
fi

if TEMPLATE = arm/stm32_f4
then
  sudo apt-get install -qq gcc-arm-embedded  
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq u-boot-tools
  sudo apt-get install -qq qemu qemu-system
fi

if TEMPLATE = x86/qemu
then
  sudo apt-get install -qq gcc-arm-embedded  
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq u-boot-tools
  sudo apt-get install -qq qemu qemu-system
fi

if TEMPLATE = x86/test/lang
then
  sudo apt-get install -qq gcc-arm-embedded  
  sudo apt-get install -qq gcc-multilib
  sudo apt-get install -qq u-boot-tools
  sudo apt-get install -qq qemu qemu-system
fi
