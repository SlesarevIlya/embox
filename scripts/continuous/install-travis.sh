TEMPLATE="$1"

travis_retry sudo apt-get install -qq gcc-arm-embedded
travis_retry sudo apt-get install -qq gcc-multilib
travis_retry sudo apt-get install -qq u-boot-tools
travis_retry sudo apt-get install -qq qemu qemu-system
