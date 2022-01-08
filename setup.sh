#!/usr/bin/env bash

maccy_ignore_file="/usr/local/bin/maccy-ignore"

# TODO: ask user before removing existing file
rm -rf $maccy_ignore_file
touch $maccy_ignore_file

echo "#!/usr/bin/env bash" >> $maccy_ignore_file
echo "bash $(pwd)/maccy-ignore.sh" >> $maccy_ignore_file

chmod +x $maccy_ignore_file
