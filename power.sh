prof="$1"

if [[ "$prof" == "quiet" ]]; then
    powerprofilesctl set power-saver
    asusctl profile -P quiet
elif [[ "$prof" == "balanced" ]]; then
    powerprofilesctl set balanced
    asusctl profile -P balanced
elif [[ "$prof" == "performance" ]]; then
    powerprofilesctl set performance
    asusctl profile -P performance
else
    echo "Invalid profile."
fi

