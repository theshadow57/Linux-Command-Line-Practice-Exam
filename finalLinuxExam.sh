# Linux Exam

# Question 1 => 
# Creates a file at the specified path. 
# Can be done using:
# - touch: Creates an empty file if it does not exist.
# - echo > file_path: Creates a new file or overwrites the existing file with empty content.
touch file_path 'or' echo > file_path

# Question 2 => 
  # Temporary Variable: 
	# A variable only available for the current session, created using (var=value).
	# It is not passed to child processes.
  # Environment Variable:
	# A variable available to the current session and to child processes.
	# Created using `export`, it becomes accessible to subprocesses.

# Question 3 => 
  # Using the `grep` command to find lines containing the string 'pass' in file.txt 
  # and redirect the results into file2.txt.
grep 'pass' file.txt > file2.txt

# Question 4 => 
  # To search for a file by its name, use the `locate` command, which quickly searches indexed paths.
locate 

# Question 5 => 
  # To navigate one directory up from the current directory, use:
	cd ..
  # If already in the root (/) directory, using `cd ..` keeps you in the root directory as it is the topmost directory.

# Question 6 => 
  # sudo command:
	# Used to execute commands with root privileges. It allows users with permissions to run a command as root.
  # visudo command:
	# Used to safely edit the `/etc/sudoers` file, preventing syntax errors and ensuring file locking to avoid concurrent edits.
  # sudoers file:
	# Defines the permissions for users to execute certain commands as root, located at `/etc/sudoers`.

  # These three tools work together to maintain a secure environment where users can execute privileged commands without causing system damage.

# Question 7 => 
  # To change file permissions, use the `chmod` command.
	# `+x` grants execute permissions, `+r` grants read permissions, and `+w` grants write permissions.
chmod 

# Question 8 => 
  # Describes open-source software, which allows:
  # - Free use, modification, and sharing of the software.
  # - Public availability of source code for collaboration and innovation, while maintaining certain rights.

# Question 9 => 
  # Package management tools allow users to:
  # - Search, install, update, upgrade, and remove software packages from the command line.
  # This process simplifies software management on Linux systems.

# Question 10 => 
  # The command that deletes all content in the current directory, including hidden files, is:
	rm -rf *

# Question 11 => 
  # a. Prompts the user to enter a username and stores the input in the variable `userName`.
	echo "Enter a userName"
	read  userName
  # b. Greets the user by displaying their input username.
	echo "Hello, $userName"
  # c. Creates a directory in the /tmp folder with the name of the entered username.
	mkdir  /tmp/$userName
	# `mkdir -p` can also be used to ensure the creation of the full path.
  # d. Creates a script file in /tmp/$userName that calculates and prints 7*7 when run.
  echo '#!/bin/bash' > /tmp/$userName/scName     
  echo 'echo $((7*7)) ' >> /tmp/$userName/scName 
  # e. To run the script, first make it executable using `chmod +x`, then execute it with its path.
    # chmod +x /tmp/$userName/scName
    # /tmp/$userName/scName

# Question 12 => 
  # Permissions:
  # - `---`: No permissions for the owner (bob).
  # - `--x`: Execute-only permission for the group (jack).
  # - `rw-`: Read and write permissions for others.

# Question 13 => 
  # The command to start the SSH server is `sudo systemctl start ssh`. 
	# None of the options given match this command.

# Question 14 => 
  # a. Appends the OS version to the `sysenum` file. 
	echo "OS version : " >> sysenum 
	cat /etc/*release >> sysenum    
  # b. Appends the hostname of the machine to the `sysenum` file.
	echo "HostName : " >> sysenum 
	hostname >> sysenum           
  # c. Appends the current username to the `sysenum` file.
	echo " Current User : " >> sysenum  
	whoami >> sysenum                   
  # d. Appends user information from `/etc/passwd` to the `sysenum` file.
	echo "User Info : " >> sysenum  
	cat /etc/passwd >> sysenum     

# Question 15 
  # Security risks associated with incorrect permissions:
	# Can allow unauthorized users to gain access to sensitive data or perform actions with root privileges, compromising the system.
	# It is important to restrict permissions so that only authorized users can execute critical commands.
