#!/bin/bash

# ws - search the web and show results in terminal.

# (c) 2016, author: Digidog (aka. diqidoq) in courtesy of MAROQQO digital media
# This program is free software released under the GPL v3 License
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

function Help(){
cat << EOF

ws - search the web and show results in terminal.
-------------------------------------------------
(c) 2016, author: Digidog (aka. diqidoq) in courtesy of MAROQQO digital media
This program is free software released under the GPL v3 License

Files:
~/share/ws/ws
~/share/ws/README.md
~/share/ws/LICENSE

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

HELP
----
ws <search words>             starts default web search (bing)
ws -option <searrch words>    starts web seach with given search engine in option

Options:
-g --google, -b --bing, -d --duckduckgo, -p --dogpile, -s --startpage, -w --wiki, -y --yahoo

EOF
}

if [[ "$@" ]] ; then

  case "$1" in

    --help|-h)
        Help
	     exit 1
	;;

    -google|-g)
	shift
        WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m "http://www.google.com/search?q=$WORDS\&as_qdr=m24"
	;;
    -bing|-b)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m "https://bing.com/search?q=$WORDS"
	;;
    -duckuckgo|-d)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m "https://duckduckgo.com/?q=$WORDS"
	;;
    -dogpile|-p)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m "http://www.dogpile.com/search/web?q=$WORDS"
	;;
    -startpage|-s)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
 	w3m "https://startpage.com/do/search?cmd=process_search\&query=$WORDS\&width_date=y"
	;;
    -wiki|-w)
        # let's first choose the wikipedia country section to use for the search
	read -p "choose wikipedia language, e.g.: type de for german or en for english: " wikilang
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m "https://$wikilang.wikipedia.org/wiki/Special:Search?search=$WORDS"
	;;
    -yahoo|-y)
        shift
        WORDS=$(echo "$@" | sed -e 's/ /+/g')
        w3m "https://search.yahoo.com/search?p=$WORDS"
        ;;
    *)
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m "https://bing.com/search?q=$WORDS"
	;;
  esac

  else
    Help
fi
