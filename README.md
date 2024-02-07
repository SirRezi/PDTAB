# CAD Issue Resolution

This repository contains a modified version of a Computer Aided Dispatch (CAD) system for the FiveM platform. The original system had an issue that caused the CAD to malfunction when a player left and re-entered the server. This issue has been fixed, and the system now operates flawlessly without any errors.

## Issue Resolution

To address the issue, the following steps were taken:

1. **Player Data Initialization:** The initialization of the `ESX.PlayerData` variable was revised to ensure it is properly initialized when a player joins the server.

2. **Job Check:** The player job check was adjusted to only occur when a player executes the corresponding command. This prevents the CAD from automatically opening when a player joins the server.

## Resolution Process

To resolve the issue, the following steps were followed:

1. Review of Existing Code: The existing code was reviewed to identify the cause of the issue and understand how the CAD system functions.

2. Issue Identification: Through testing and debugging, it was determined that the CAD malfunctioned when a player re-entered the server.

3. Issue Analysis: The code was carefully analyzed to pinpoint the exact reason for the issue.

4. Issue Resolution: By adjusting the initialization of player data and the player job check, the issue was resolved, and the CAD system now operates flawlessly.

## Installing on Your Server

To install the CAD system on your server, follow these steps:

1. Download or clone the repository to your local server.

2. Ensure you have installed the necessary dependencies and resources to run the CAD system. This may vary depending on your specific requirements.

3. Open the `html` folder and edit the `index.html` file. Change the Google Docs link to link to the appropriate Google Docs file for your CAD system.

4. Configure the CAD system according to your requirements, including settings for key bindings, job names, etc.

5. Restart your FiveM server to apply the changes.

6. Verify that the CAD system operates correctly by using the corresponding commands or keys to open the CAD.

7. If needed, you can make adjustments or add additional features to further enhance the CAD system.

## Support

If you encounter any issues during the installation or use of the CAD system, or if you need further assistance, feel free to create an issue in this repository or reach out to the developers at Trascher-TV.


## Orignal
https://forum.cfx.re/t/police-mdt-for-google-docs-with-ui/4951527
