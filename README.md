# linux_xorg_glamor_perfomance_uxa_tearing_obs_studio_fix_intel
linux_xorg_glamor_perfomance_uxa_tearing_fix_intel

chmod +x Install_xorg_fix.sh | run in terminal

или самим сделать исполняемым и запустить в терминале потребует пароль и установит после надо будет перезагрузить компьютер.

Взяли и распространяете ссылка на оригинал обязательна.

Не обещается исправление тиринга во всех программах , но в obs уже такого дикого тиринга небольшая диагональ производительность glamor будет в два раза выше , в случае чего если вам вообще не нужен тиринг то есть оптимальная производительность , но только будет ровно пол скорости конфиг ниже.

------------------------------------------------------------------------------------------------------------------------------
Optimal xorg config no tiring obs-studio no perfomance

Terminal

&&su

&& cd /etc/X11/ 

&& cat << EOF > xorg.conf

Section "Device" 

    Identifier "intel" 
    
    Driver "modesetting" 
    
    Option "AccelMethod" "sna" 
    
    Option "TearFree" "false"
    
    Option "DRI" "3"
    
EndSection

EOF


