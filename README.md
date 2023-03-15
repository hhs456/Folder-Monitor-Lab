## PowerShell FileSystemWatcher Script

### Introduction

This PowerShell script monitors a specified folder and all its subdirectories for changes (creation, deletion, modification, renaming) in files and logs them to a text file.

### Usage

1. Open PowerShell
2. Navigate to the folder where the script is located
3. Run the script with the command `.\script.ps1`
4. Enter the folder path to monitor when prompted
5. The script will start monitoring the folder and logging any changes to a text file named "Changelog.txt" in the folder where the change occurred.

### Requirements

- Windows PowerShell
- Microsoft .NET Framework 4.5 or later

### Note

- The script uses the `FileSystemWatcher` .NET class to monitor the folder and all its subdirectories for changes.
- The script excludes any files or folders containing "~" in their names.
- The script logs the changes to a text file in the same folder where the change occurred, named "Changelog.txt".
- The script is not case-sensitive and treats all file extensions as lowercase.

### License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
