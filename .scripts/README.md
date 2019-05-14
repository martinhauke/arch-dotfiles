# Scripts


This is a small collection of simple scripts to help me be more lazy. Most of
them are overspecific and are tailored to my directory structure, but feel free
to use them however you like.

I use most of those scripts with [rofi][1] or a keyboard shortcut.


## Overview


**ckarch**

This script opens the [archlinux website][2] so you can check the news section
for breaking changes before an update.

This script requires [surf][3] to be installed.


**g**

Google something in [surf][3].

`g how to write useful shell scripts`


**gw**

Google the current weather at a specified location. Assumes "Dresden" if no
argument is given.


**lock**

A fancy way to lock the screen. Takes a screenshot, scales it down and up again
to get a blurry effect. This screenshot will be used as a lock screen image for
[i3lock][4].


**snip**

A sad attempt at making my own snipping tool. It works like a charm though.

You will have to select an area on the screen with your mouse. Once you release
the mouse button a screenshot is taken, saved to the `~/pictures/screenshots/`
folder (make sure that one exists, because the script does not - yet) and also
copies the image to the clipboard.

Requires [imagemagick][5], [xclip][6] and [desktop notifications][7].

[1]: https://wiki.archlinux.org/index.php/Rofi
[2]: https://www.archlinux.org/
[3]: https://wiki.archlinux.org/index.php/Surf
[4]: https://www.archlinux.org/packages/community/x86_64/i3lock/
[5]: https://wiki.archlinux.org/index.php/ImageMagick
[6]: https://www.archlinux.org/packages/?name=xclip
[7]: https://wiki.archlinux.org/index.php/Desktop_notifications
