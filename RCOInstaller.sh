cd /Desktop/Roblox.app/Contents/MacOS
if [ ! -f RCOPATCHED ]; then
mv RobloxPlayer ActualRobloxPlayer
echo "#!/bin/sh" >> RobloxPlayer
echo "rm -rf /Desktop/Roblox.app/Contents/MacOS/ClientSettings && mkdir /Desktop/Roblox.app/Contents/MacOS/ClientSettings && curl https://roblox-client-optimizer.simulhost.com/ClientAppSettings.json -o /Desktop/Roblox.app/Contents/MacOS/ClientSettings/ClientAppSettings.json && exec /Desktop/Roblox.app/Contents/MacOS/ActualRobloxPlayer" >> RobloxPlayer
chmod +x RobloxPlayer
touch RCOPATCHED
echo "Finished installing RCO"
else
echo "You have already installed RCO!"
fi
