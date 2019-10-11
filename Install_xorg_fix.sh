#!/bin/bash
 
sudo cp 20-intel.conf /usr/share/X11/xorg.conf.d && sudo cp xorg.conf /etc/X11 && sudo cp xorg.conf.failsafe /etc/X11 && notify-send -i info Information "перезагрузитесь что бы изменения вступили в силу Xorg fix тиринг obs perfomance please reboot restart by Griggorii my donate https://money.yandex.ru/to/410014999913799 " && cd ~ && cat << EOF > .drirc
<device screen="0" driver="dri2">
        <application name="Default">
                <option name="vblank_mode" value="1"/>
        </application>
</device>
