Follow the following steps install the app on your phone?

1) Make sure you have enabled the "Developer mode" in the "System settings on 
   your phone

2) create a named script "d", and it's content is as follows:

#!/bin/bash
adb push $1 /tmp
adb shell "sudo -iu phablet pkcon --allow-untrusted install-local /tmp/$1"

$chmod +x d

You may copy it to a public path like "/usr/local/bin/"

3) run the command in the folder where the .click is located. For example:

$d filebrowser.xiaoguo_0.2_armhf.click

Then the above command will install the .click file onto your phone

Known issues:

1) If the syslog file is too big (for example a few mega bytes), the app may exit
