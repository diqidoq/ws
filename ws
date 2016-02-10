#!/bin/bash
# © 2015 | all rights reserved by Digidog in courtesy of MAROQQO digital media
# free for use exclusively by MAROQQO team members only

INFO="ws | is a web search script searching the web with default or alternating terminal browser"

if [[ "$@" ]] ; then

  case $1 in

    -google|-g)
	shift
        WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m http://www.google.com/search?q=$WORDS\&as_qdr=m24
	;;
    -bing|-b)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m https://bing.com/search?q=$WORDS
	;;
    -duckuckgo|-d)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m https://duckduckgo.com/?q=$WORDS
	;;
    -dogpile|-p)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m https://duckduckgo.com/?q=$WORDS
	;;
    -startpage|-s)
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
 	w3m https://startpage.com/do/search?cmd=process_search\&query=$WORDS\&width_date=y
	;;
    -wiki|-w)
        # let's first choose the wikipedia country section to use for the search
	read -p "choose wikipedia language, e.g.: type de for german or en for english: " wikilang
	shift
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m https://$wikilang.wikipedia.org/wiki/Special:Search?search=$WORDS
	;;
    -yahoo|-y)
        shift
        WORDS=$(echo "$@" | sed -e 's/ /+/g')
        w3m https://search.yahoo.com/search?p=$WORDS
        ;;
    *)
	WORDS=$(echo "$@" | sed -e 's/ /+/g')
	w3m https://bing.com/search?q=$WORDS
	;;
  esac

 else
   echo " "
   echo "" $INFO
   echo "
 1st parameter = search words
 2nd parameter = search engine (default: bing)

 "
fi

