# Function to execute before exiting
cleanup() {
    # Add your cleanup command here
    uniq tmp.tmp >> songs.txt
    rm tmp.tmp
    # Additional cleanup commands if needed
    exit
}

# Trap the SIGINT signal (Ctrl+C)
trap 'cleanup' INT

while true; do
    osascript ~/Desktop/musicstream/support.scpt
    sleep 10
done
