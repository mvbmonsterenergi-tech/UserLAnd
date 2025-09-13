SCRIPT_PATH=$(realpath ${BASH_SOURCE})

sudo rm -f $SCRIPT_PATH

if [ -d /sdcard ]; then
  if [ ! -d ~/sdcard ]; then
    ln -s /sdcard ~/sdcard
  fi
fi
if [ -d /storage ]; then
  if [ ! -d ~/scopedStorage ]; then
    ln -s /storage/internal ~/scopedStorage
  fi
fi

echo "Welcome to Debian in UserLAnd!"
