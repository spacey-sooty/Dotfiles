case $2 in
    "-s" )
        ;;
    * )
        chmod +x scripts/*.sh
        ./scripts/global-install.sh
        ;;
esac

case $1 in
    "debian" | "ubuntu" )
        echo "Installing for Debian/Ubuntu"
        ./scripts/debian-install.sh
        ;;
    "fedora" )
        echo "Installing for Fedora"
        ./scripts/fedora-install.sh
        ;;
    * )
        echo "To install most dependencies a platform is required"
        ;;
esac
