#!/bin/bash
nmcli connection show
echo "Switching back to Seagulls now.. "
nmcli connection up d3426622-6828-40c4-a700-9e348938efdc
echo "All done!"
