# Bash, with GNU sleep
sp='/-\|'
sc=0
spin() {
    printf "\b${sp:sc++:1}"
    ((sc==${#sp})) && sc=0
    sleep 0.1
}
endspin() {
    printf '\r%s\n' "$*"
    sleep 0.1
}

endspin
