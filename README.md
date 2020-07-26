# AutoHotKey-Utils
A few [AutoHotKey](https://www.autohotkey.com/) scripts I personally use for my own convenience. This repo is mainly just a backup for myself, but feel free to use these however you like.


## Descriptions for the curious

### `app_shortcuts.ahk`

This sets up some custom shortcuts to open apps that I need frequently: Windows' Snipping Tool, the Volume Mixer, and the Sound Devices panel that Windows updates have made ridiculously difficult to locate through the settings menu.

### `audio_switcher.ahk`

This uses the helpful [nircmd](https://www.nirsoft.net/utils/nircmd.html) tool to switch my machine's active audio device between my speakers and headphones. It does need some setup first: the relevant devices have to be manually renamed to "Speakers" and "Headphones" in the sound devices panel, which is possible by accessing each device's Properties menu.

For the record, most of this script was adapted from code I found online a long time ago; I'd credit the source, but unfortunately I don't remember where I got it from.

### `custom_strings.ahk`

This one's the most straightforward: all it does it check for particular string patterns and then replace them automatically. I just use it to type symbols because my keyboard doesn't have a numpad to enter alt codes.

## Installation process

The setup is deliberately rudimentary at this time — all I do is throw shortcuts to each `.ahk` file into my Startup folder (`C:\Users\{USER}\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`) and it automatically launches the scripts when I log in.