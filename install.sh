chmod +x scripts/*.sh
./scripts/global-install.sh

case $1 in
    "debian" | "ubuntu" )
        echo "Installing for Debian/Ubuntu"
        ./scripts/debian-install.sh
        ;;
    * )
        echo "To install most dependencies a platform is required"
        ;;
esac
