
FiveM Weapon Removal Script
Description

This script removes all weapons and ammo from a player's inventory in a FiveM server running on the qb-core framework when the player disconnects. It is compatible with servers using FivePD and vMenu resources, ensuring a clean slate for players upon rejoining.

Features

1. Automatically removes all weapons and ammo from a player's inventory upon disconnecting.
2. Compatible with qb-core framework.
3. Works alongside FivePD and vMenu.
4. Ensures players have no residual weapons or ammo when rejoining.


Requirements

1. FiveM
2. qb-core


Works With 

1.  FivePD
2.  vMenu


Installation

1. Download the Script:
Clone or download this repository to your local machine:
https://github.com/Rageblade-21/Remove-Weapons-Ammo-When-player-Disconnect

2. Add to Resources Folder:
Place the script folder into your FiveM server's resources directory.

3. Update Server Configuration:
Add the script to your server's server.cfg file to ensure it starts up with the server.

4. Usage
The script runs automatically once installed. When a player disconnects from the server, all their weapons and ammo will be removed from their inventory.

Troubleshooting

1. Weapon Not Added: Ensure that the weapon name specified in the config.lua matches the exact weapon names used by FiveM.
2. Script Errors: Check the server console for any errors. Ensure all dependencies (qb-core, FivePD, vMenu) are correctly installed and updated.
3. Compatibility Issues: Verify that other scripts or resources are not conflicting with this script.

Contributing
Feel free to fork this repository, make improvements, and submit pull requests. Contributions are welcome!

Feel free to reach out if you encounter any issues or have any questions regarding the setup and usage of this script. Enjoy your enhanced FiveM gameplay experience!
