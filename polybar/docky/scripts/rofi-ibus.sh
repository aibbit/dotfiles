#!/bin/sh

switch(){
    ENTRIES=`ibus read-config | grep engines-order | sed 's/engines-order:\|\[\|\]\| //g' | sed 's/,/\n/g' | sed "s/'//g"`
    SELECTION=`printf "%s\n" $ENTRIES | rofi -dmenu -theme ~/.config/polybar/docky/scripts/rofi/commonmenu.rasi -i -p 'Select'`

    if [ -n $SELECTION ] && [ ! $SELECTION = '\n' ]
    then
        ibus engine $SELECTION
    fi
    exit 0
}

engine(){
    IBUS_RAW=`ibus engine`
    # read currently used engine(xkb, m17n, rime, etc...)
    IBUS_ENGINE=`echo $IBUS_RAW | awk -F ':' '{print $1}'`

    # Change me! use any icons you like
    ENGINE_ICON=

    OUTPUT="${ENGINE_ICON} ${IBUS_ENGINE}"

    echo $OUTPUT
    exit 0
}


case "$1" in
    --switch)
        switch
        ;;
    *)
        engine
        ;;
esac
