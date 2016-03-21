Follow the following steps install the app on your phone?

1) create a named script "d", and it's content is as follows:

#!/bin/bash
adb push $1 /tmp
adb shell "sudo -iu phablet pkcon --allow-untrusted install-local /tmp/$1"

$chmod +x d

You may copy it to a public path like "/usr/local/bin/"

2) run the command in the folder where the .click is located. For example:

$d filebrowser.xiaoguo_0.2_armhf.click

Then the above command will install the .click file onto your phone
