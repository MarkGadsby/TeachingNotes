#!/bin/bash
nmcli connection show
echo "Switching to music player now.. "
nmcli connection up 84def394-bd6d-465e-917f-34486db81fd7
echo "All done!"
