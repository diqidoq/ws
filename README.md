# ws

A bash terminal utility (still early BETA) to search the web and show results in terminal.

Type ``` ws -option searchwords ``` in terminal to get search results listed from given search engine in -option.

## Install instructions

All @diqidoq bash script utilities are build the same way: Create a ``` ~/share ``` and a ``` ~/bin ``` folder in you machines user account if it doesn't exist already (``` mkdir -p ~/<folder> ```) and ``` git clone ``` the repo into the ``` ~/share ``` folder. Then create a sym link from the main executable file commonly named like the repo in ``` ~/share/<the-new-utility-git> ``` to the ``` ~/bin/<executable> ``` folder and ``` chmod a+x ~/bin/<executable> ```. Make sure your ``` ~/bin ``` folder is in the system path (``` export PATH=/home/yourusername/bin:PATH ```) to make the new utility terminal aware for commands.

    mkdir -p ~/bin
    mkdir -p ~/share
    cd ~/share
    git clone <this-git-repo> (link from above on the right <https>)
    ln -s ~/share/<this-git-repo>/<this-utility-name> ~/bin/<this-utility-name>
    chmod a+x ~/share/<this-git-repo>/<this-utility-name> ~/bin/<this-utility-name>
    source ~/.bashrc

## Requirements

 + w3m (``` sudo apt-get install w3m ```)
 + Bash (Born Again Shell support, should be provided by default in most X systems)
 + X enviroment with Xterm like terminals, like default in Debian/Ubuntu derivates and Mac OSX systems.
 + Some basic knowledge about terminal commands and terminal application handling.

## License

Copyright (c) 2016 Digidog (aka. diqidoq) - Released under GPL v3

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see <http://www.gnu.org/licenses/>.

