echo "Completely remove power manager? [y|n]"
read -n 1 -r < /dev/tty
echo ""
echo
if ! echo $REPLY | grep -E '^[Yy]$' > /dev/null
then
  exit 1
fi

sudo rm -rf /usr/local/bin/power_events
sudo rm -rf /etc/udev/rules.d/99-power-events.rules && sudo udevadm control --reload-rules

echo "Uninstall complete!"
