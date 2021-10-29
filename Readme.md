# Custom Commands for GIT Usage

Custom commands defined to be used during development using GIT as source control.

Works with MINGW-64 and Cygwin shells on Windows, and normal bash on Linux.
## How-To
Start by running the `cp_to_home.sh` file.
This will copy the custom commands along with the `.bashrc` file to your home directory.

Next time you start your bash window, it will use the custom commands inside the `all_custom_commands.sh` file.
## Writing your own custom commands
Edit the `all_custom_commands.sh` file

Use the following syntax:
```bash
function <name>()
{
	//code goes here
}
```

