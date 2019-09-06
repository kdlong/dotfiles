export PATH=~/bin:$PATH

. /usr/local/bin/root/bin/thisroot.sh

for script in ~/.bashrc.d/*; do
  [ -x $script ] || continue
  . $script
done
