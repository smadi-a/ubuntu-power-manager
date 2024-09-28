sudo apt install light udev -y

sudo cp bin/power_events /usr/local/bin/
sudo cp bin/99-power-events.rules /etc/udev/rules.d/ && sudo udevadm control --reload-rules

echo "Setup complete!"
