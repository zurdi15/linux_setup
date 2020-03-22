[cambiar origenes de software]

sudo apt build-dep awesome

git clone https://github.com/awesomewm/awesome

cd awesome

sudo apt-get build-dep mesa

make package

sudo apt install ./build/awesome-4.3.0.0~git809-g5d1394b9-Linux.deb



git clone --recursive https://github.com/DaveDavenport/rofi

cd rofi

sudo apt install flex bison librsvg2-dev libjpeg-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev

meson setup build

ninja -C build

sudo ninja -C build install



git clone https://github.com/tryone144/compton.git

cd compton

git fetch

git checkout feature/dual_kawase

sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libxdg-basedir-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev

git submodule update --init --recursive

meson --buildtype=release . build

ninja -C build

ninja -C build install



git clone https://github.com/Bearbobs/glorious-awesome-debian.git

cd glorious-awesome-debian

[Copy awesome folder to .config]

[login to awesome desktop environment and enjoy!]



[rest: https://github.com/manilarome/the-glorious-dotfiles]
