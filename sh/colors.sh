#!/bin/bash

# --- Reset ---
NC='\033[0m' # No Color (resetta tutti gli attributi)

# --- Colori Testo Regolari ---
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# --- Colori Testo Grassetto (Bold) ---
BBLACK='\033[1;30m'
BRED='\033[1;31m'
BGREEN='\033[1;32m'
BYELLOW='\033[1;33m'
BBLUE='\033[1;34m'
BMAGENTA='\033[1;35m'
BCYAN='\033[1;36m'
BWHITE='\033[1;37m'

# --- Colori Testo Sottolineato (Underline) ---
UBLACK='\033[4;30m'
URED='\033[4;31m'
UGREEN='\033[4;32m'
UYELLOW='\033[4;33m'
UBLUE='\033[4;34m'
UMAGENTA='\033[4;35m'
UCYAN='\033[4;36m'
UWHITE='\033[4;37m'

# --- Colori Sfondo (Background) ---
ON_BLACK='\033[40m'
ON_RED='\033[41m'
ON_GREEN='\033[42m'
ON_YELLOW='\033[43m'
ON_BLUE='\033[44m'
ON_MAGENTA='\033[45m'
ON_CYAN='\033[46m'
ON_WHITE='\033[47m' # Attenzione: questo di solito rende il testo nero

# --- Colori Testo Alta Intensità (High Intensity) ---
IBLACK='\033[0;90m'
IRED='\033[0;91m'
IGREEN='\033[0;92m'
IYELLOW='\033[0;93m'
IBLUE='\033[0;94m'
IMAGENTA='\033[0;95m'
ICYAN='\033[0;96m'
IWHITE='\033[0;97m'

# --- Colori Testo Grassetto Alta Intensità (Bold High Intensity) ---
BIBLACK='\033[1;90m'
BIRED='\033[1;91m'
BIGREEN='\033[1;92m'
BIYELLOW='\033[1;93m'
BIBLUE='\033[1;94m'
BIMAGENTA='\033[1;95m'
BICYAN='\033[1;96m'
BIWHITE='\033[1;97m'

# --- Colori Sfondo Alta Intensità (High Intensity Background) ---
ON_IBLACK='\033[0;100m'
ON_IRED='\033[0;101m'
ON_IGREEN='\033[0;102m'
ON_IYELLOW='\033[0;103m'
ON_IBLUE='\033[0;104m'
ON_IMAGENTA='\033[0;105m'
ON_ICYAN='\033[0;106m'
ON_IWHITE='\033[0;107m' # Attenzione: questo di solito rende il testo nero

# --- Altre Formattazioni ---
BOLD='\033[1m'
DIM='\033[2m' # Non sempre supportato
ITALIC='\033[3m' # Non sempre supportato
UNDERLINE='\033[4m'
BLINK='\033[5m' # Spesso fastidioso e non sempre supportato
REVERSE='\033[7m' # Inverte colore testo e sfondo
HIDDEN='\033[8m' # Testo nascosto (utile per password, ma `read -s` è meglio)

# Esempio di utilizzo:
# echo -e "${RED}Questo è testo rosso${NC}"
# echo -e "${BGREEN}Questo è testo verde grassetto${NC}"
# echo -e "${UBLUE}Questo è testo blu sottolineato${NC}"
# echo -e "${YELLOW}${ON_BLUE}Testo giallo su sfondo blu${NC}"
# echo -e "${BRED}${BLINK}ATTENZIONE LAMPEGGIANTE (se supportato)${NC}"
# echo -e "Un testo ${BOLD}normale${NC} con una parola in ${BBLUE}grassetto blu${NC}."
