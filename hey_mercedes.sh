#!/bin/bash

restart () { source ./hey_mercedes.sh hey_mercedes; };


if [ "$1" == "hey_mercedes" ]; then
	echo "Bonjour, comment puis-je vous aider aujourd'hui?";
        read input;
else	echo "Je n'ai pas saisi votre demande" && exit;
fi


if [ "$input" == "weather" ]; then
	source ./weatherglobal.sh;
	restart;


elif  [ "$input" == "address" ]; then
	source ./addressglobal.sh;
	restart;


elif [ "$input" == "quoteday" ]; then
	source ./quotedayglobal.sh;
	restart;


elif [ "$input" == "bye_mercedes" ]; then
	exit;


else
	echo "Pardon?";
	restart;
fi

