echo ""
echo "----------------------------------------------------------------------------"
echo -e  "+++                            +++
++++++                      ++++++
+++++++++       +*       +++++++++
+++++++++    ++++++++    +++++++++
  +++++++   ++++  ++++   +++++++      \e[1mWelcome to WPS Office Skin Installer\e[0m 
 *+++*+++   ++++   ++*   +++*+++*     by Vaan
 ++++++*      +    +      +++++++     
 ++++++++++            ++++++++++     \e[1mGithub\e[0m : https://github.com/vaan-linux
 *++++++++++++      ++++++++++++*     \e[1mEmail\e[0m : irfan.taufik03@gmail.com
    ++++++++++++++++++++++++++    
       ++++++++++++++++++++       
          ++++++++++++++          
             ++++++++          "                          
echo "----------------------------------------------------------------------------"
echo ""
echo -e "\e[1mMakesure Comfort skin choosed on WPS Office  Skin and interface settings\e[0m"
echo ""
echo -e "\e[1mChoose a Skin:\e[0m"

echo "1). Default"
echo "2). Dark"
echo "3). Nord"
echo "4). Tokyo Night"
echo "5). Catppuccin"
echo "6). Dracula"
echo "7). Onedark"
echo "8). Everforest"
echo "9). Gruvbox"

echo -n "Enter Skin number: "
read skin

echo ""
echo -e "\e[1mWhat Linux distribution are you using?:\e[0m"
echo "1). Arch Linux based distributions"
echo "2). Debian/Ubuntu based distributions"
echo "3). RHEL/Fedora based distributions"
echo -n "Enter Skin number: "
read distro

if [ "$distro" -eq 1 ]; then
	wpsskindir="/usr/lib/office6/skins/2019dark/"
elif [ "$distro" -eq 2 ]; then
	wpsskindir="/opt/kingsoft/wps-office/office6/skins/2019dark/"
elif [ "$distro" -eq 3 ]; then
	wpsskindir="/opt/kingsoft/wps-office/office6/skins/2019dark/"
else
	wpsskindir="/usr/lib/office6/skins/2019dark/"
fi

if [ -d "$wpsskindir" ]; then
	echo -n ""
else
	sudo rm -r $wpsskindir*
fi

DIR=$(dirname "$0")
echo ""
if [ "$skin" -eq 1 ]; then
	sudo cp -r $DIR/.skins/default/* $wpsskindir
	echo "Default skin successfully installed"
	
elif [ "$skin" -eq 2 ]; then
	sudo cp -r $DIR/.skins/dark/* $wpsskindir
	echo "Dark skin successfully installed"
	
elif [ "$skin" -eq 3 ]; then
	sudo cp -r $DIR/.skins/nord/* $wpsskindir
	echo "Nord skin successfully installed"

elif [ "$skin" -eq 4 ]; then
	sudo cp -r $DIR/.skins/tokyo-night/* $wpsskindir
	echo "Tokyo Night skin successfully installed"

elif [ "$skin" -eq 5 ]; then
	sudo cp -r $DIR/.skins/catppuccin/* $wpsskindir
	echo "Catppuccin skin successfully installed"

elif [ "$skin" -eq 6 ]; then
	sudo cp -r $DIR/.skins/dracula/* $wpsskindir
	echo "Dracula skin successfully installed"

elif [ "$skin" -eq 7 ]; then
	sudo cp -r $DIR/.skins/onedark/* $wpsskindir
	echo "Onedark skin successfully installed"

elif [ "$skin" -eq 8 ]; then
	sudo cp -r $DIR/.skins/everforest/* $wpsskindir
	echo "Everforest skin successfully installed"

elif [ "$skin" -eq 9 ]; then
	sudo cp -r $DIR/.skins/gruvbox/* $wpsskindir
	echo "Gruvbox skin successfully installed"

else
	echo "Not skin selected"
	sudo cp -r $DIR/.skins/default/* $wpsskindir
fi

echo ""
echo "----------------------------------------------------------------------------"
