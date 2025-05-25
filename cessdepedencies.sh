
#!/bin/bash

# ==========================================
# Color Definitions
# ==========================================
# Standard colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Bold colors
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'
BOLD_YELLOW='\033[1;33m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
BOLD_CYAN='\033[1;36m'
BOLD_WHITE='\033[1;37m'

# ==========================================
# Banner Display
# ==========================================
function display_banner() {
    echo "========================================"
    echo -e "${YELLOW} Simple script is made by EZ-LABS${NC}"
    echo -e "-------------------------------------"

    echo -e "${BLUE}"
    echo -e " ███████╗███████╗     ██╗      █████╗ ██████╗ ███████╗"
    echo -e " ██╔════╝╚══███╔╝     ██║     ██╔══██╗██╔══██╗██╔════╝"
    echo -e " █████╗    ███╔╝█████╗██║     ███████║██████╔╝███████╗"
    echo -e " ██╔══╝   ███╔╝ ╚════╝██║     ██╔══██║██╔══██╗╚════██║"
    echo -e " ███████╗███████╗     ███████╗██║  ██║██████╔╝███████║"
    echo -e " ╚══════╝╚══════╝     ╚══════╝╚═╝  ╚═╝╚═════╝ ╚══════╝"
    echo -e "${NC}"

    echo -e "${PURPLE}╭───────────────────────────────────────────────────────╮${NC}"
    echo -e "${CYAN}│  ${YELLOW}⚡ ${WHITE}C E S S | N E T W O R K | A U T O M A T I O N ${YELLOW}⚡  ${CYAN}│${NC}"
    echo -e "${PURPLE}╰───────────────────────────────────────────────────────╯${NC}"

    echo -e "\n${GREEN}🚀 Node.js Tools  •  ${RED}Linux Automation  •  ${BLUE}Cloud Solutions${NC}\n"
    echo -e "${YELLOW}Github: ${GREEN}https://github.com/ezlabs-nodes${NC}"
    echo -e "${YELLOW}Telegram: ${GREEN}https://t.me/EzLabsNodes${NC}"
    echo -e "${YELLOW}Twitter: ${GREEN}@EzlabsNodes${NC}"
    echo "======================================================="
}

# ==========================================
# Display Banner
# ==========================================
display_banner

# ==========================================
# System Update
# ==========================================
info "Updating system packages..."
sudo apt update
apt update && apt install wget tar -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
# ==========================================
# Docker Installer
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# ==========================================
info "Verification..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# ==========================================
# System Update
# ==========================================
info "Updating system packages..."
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
# ==========================================
# Download Cess Repository
wget https://github.com/CESSProject/cess-nodeadm/archive/v0.6.0.tar.gz
tar -xvzf v0.6.0.tar.gz
cd cess-nodeadm-0.6.0/
./install.sh --ignore-error
# ==========================================
echo "==================================="
echo -e "${PURPLE}           EZ Labs Nodes       ${NC}"
echo "==================================="
echo -e "${GREEN}    Thanks for using this script!${NC}"
echo "==================================="
