#shellbsscript to show various system configuration

echo "\n 1:- current looged usre and his logged name    \n 2:-current shell \n3:- home directory \n 4:- operating system type \5 :- current path settings \n 6:- current working directory \n 7:- no.of logged users"
echo "chooes option from 1 to 7"
read options
case $options in 
1)  echo " current logged user is :-  $USER"
echo " current log name is :-  $LOGNAME"
;;
2) echo " current shell is :-  $SHELL"
;;
3) echo "home directory :- $HOME"
;;
4) echo "operating sysetm type & it's version:-"cat /proc/version
;;
5) echo "current working directory:-$PWD"
;;
6) echo "current path setting :- :$PATH "
;;
7) echo "current loggged number of user :- "who | wc  -l
;;
*) echo "invalid option"
;; 
esac
