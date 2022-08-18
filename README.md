# Assignment 00: Install required software

This assignment is meant to help you install the basic set of software tools that we will need for this course.

You will be doing all of the install in a command shell/terminal emulator.

## DO NOT CLONE THIS REPOSITORY DIRECTLY

Use the GitHub classroom link instead: https://classroom.github.com/a/TLIqqWVj

If you clone this repo directly, it will not be added to the organization as an individual repo associated with your account and you will not be able to push to it.

## Instructions

Follow the appropriate directions below relative to your operating system. 

If you are a Windows user, you will becom a Linux user by installing the Windows Subsystem for Linux (WSL)

### Mac users

1. Open a Terminal

2. Check to see if you have software installed or not.

You should already have VIM and CURL installed.
To check this, type `which vim` and `which curl`, respectively.

The output should look something like:

```
$ which vim
/usr/bin/vim
$ which curl
/usr/bin/curl
```

This works for all the software you are installing.

3. Install Git.

Follow the directions here to install Git if it is not already installed:

https://git-scm.com/book/en/v2/Getting-Started-Installing-Git#_installing_on_macos

4. Check SHELL.

To determine which shell you are using, type: `echo $SHELL`.

If it is not `/bin/bash`, then change the shell to bash with the `chsh` command:

```
chsh -s /bin/bash
```

## Windows users

1. Windows users must install the Windows Subsystem for Linux. 

Follow the instructions here to install it:

https://docs.microsoft.com/en-us/windows/wsl/install

The autograder runners use Ubuntu, so that is the safest bet for choosing a distribution.
You could also install Debian 11, which is very similar to Ubuntu.

2. Once you have installed WSL, you can start it by opening either a Command Shell or Powershell and typing `wsl`.

Now you will be able to follow the instructions for installing the rest of the software on Linux below.

### Linux users

1. You can install most everything you need all at once:

```
$ sudo apt install vim git curl
```

You can also check to see if something is installed (and see its full path) by typing `which` followed by whatever program you are looking for.

### EVERYONE

1. Install NVM.

The Node Version Manager (NVM) is package that helps you install, update, and switch between multiple versions of Node.js.

To install it, follow these directions:

https://github.com/nvm-sh/nvm#install--update-script

Since you have `curl` installed, you can run that entire first command:

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

2. Install Node.js.

We will be using the Long Term Support (LTS) version of Node.
This is the version that GitHub Actions (autograder) uses by default.

```
$ nvm install --lts
```

3. Check what version is installed:

```
nvm ls
->     v16.17.0
default -> lts/* (-> v16.17.0)
iojs -> N/A (default)
unstable -> N/A (default)
node -> stable (-> v16.17.0) (default)
stable -> 16.17 (-> v16.17.0) (default)
lts/* -> lts/gallium (-> v16.17.0)
lts/argon -> v4.9.1 (-> N/A)
lts/boron -> v6.17.1 (-> N/A)
lts/carbon -> v8.17.0 (-> N/A)
lts/dubnium -> v10.24.1 (-> N/A)
lts/erbium -> v12.22.12 (-> N/A)
lts/fermium -> v14.20.0 (-> N/A)
lts/gallium -> v16.17.0
```

You should see a v16 installed.

## Review

You should now have the following commands available on your system:

1. `vim`
2. `curl`
3. `git`
4. `nvm`
5. `node`

## Set up SSH keys

SSH (Secure SHell) keys will help you to use GitHub more easily by handling authentication without passwords or tokens. 

1. Generate an ssh key with the following command:

```
$ ssh-keygen
Generating public/private rsa key pair.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/user/.ssh/new_id_rsa
Your public key has been saved in /home/user/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:NOHwFu5pseMDtrsXZ6mUTtI+22nMSIiN06peU1UehBw user@host
The key's randomart image is:
+---[RSA 3072]----+
|      ..E++      |
|       =o= .     |
|        X .      |
|       = =       |
|     =+oS. .     |
|    +o==B.+      |
|    oo.BoO       |
|   ... .Bo+.     |
| .o.  oo.+o      |
+----[SHA256]-----+
```

Leave the passphrase empty.
Just press enter without typing anything else.

The output should look similar to what is shown above.

2. Add the PUBLIC key to your GitHub account.

To get the text inside the PUBLIC key, enter the following command:

```
$ cat ~/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCkBBATLmj6gwNKvEPdEe5en9Ijji0N4lRuybnFGpz3D4Yc5L+GLwQgcXizuBwY4OcE8DCSIugcy137igQ4eBYDhQnNBCbUHSRdRtDFEVl97OvGJTp/S5IAxer0fq7c7qNIeAsmtwidvk+Ibp1TVZx9pOwWksmCKz1opDqdZXZjmmqPmIZJpptB8iGAw0NM1XvJb9PdcjTt8eWA+omqeykndjJlZ2jeoj3NFYPgMHrf6vTlwBy8oTTMCJgLS4mIWrfnflJVsmwdLbKTzNoBP6tEjyaPfdCFRUTfXvYRi7Yw6rkyS3eyxjtHGVAJEpfJP4fHDISnqTRjbINIVYZQ3xTIyXE/jaoo9hVBVzQzUVnlfDhRaaV2RLRiUHfxZU8kQUkfSBV18h/s9SEd7WuQFILbHuVYecfuyE1k9e/C7Q5nG8zYaoE4di7xGY0kM/ymoDHDDj1zLI2Hdu4QVNLwwkStAmYqVjURt+BPQ630tzkansRQLtm4k3/EQrf3Pxdr+Cs= user@host
```

The above output should look similar to the default PUBLIC key that you created. 
There is another PRIVATE key as well.
Leave that one alone.

> **_IMPORTANT:_** Do not put your PUBLIC or PRIVATE keys in a Git repo or ever send them to anyone.

3. Copy your key.

4. Open GitHub and click your user icon in the top right and then "Settings." In your settings, find "SSH and GPG keys" on the left side of the interface.

Or go to this URL: https://github.com/settings/keys

5. Click the green button that reads "New SSH key."

6. Past your PUBLIC key into the "Key" field and add a name for the key in the "Title" field.

7. Press the "Add SSH Key" button to save the key in your account.

## Finish the assignment

Now that you have the necesary software installed, we're going to clone the assignment repository that GitHub Classroom made for you.

1. In your terminal, run the following command to see what your current directory is:

```
$ pwd
/home/user/workspace/
```

2. Clone your repository

3. Create a directory to hold your assignment repos:

```
$ mkdir workspace
```

4. Change directories into that one and check your new working directory:

```
$ cd workspace
$ pwd
/home/user/workspace/
```

5. Go to your copy of the assignment repository on GitHub. 

6. Click the green "Code" button.

7. Select the "SSH" tab and then copy the URL.

8. Clone your repository:

```
$ git clone [SSH URL FROM GITHUB]
```

9. Change directory into your newly-cloned repository:

```
$ cd a00-GHUSERNAME
```

### Run a script and then push the output back to GitHub

!. Run the script in your newly-cloned repo:

```
$ bash ./install_check.sh
Install checked: 2022-08-18T02:49:16-04:00

SYSTEM: Linux user 5.18.0-0.bpo.1-amd64 #1 SMP PREEMPT_DYNAMIC Debian 5.18.2-1~bpo11+1 (2022-06-14) x86_64 GNU/Linux
SHELL:  [/bin/bash]
GIT:    [/usr/bin/git] git version 2.30.2
VIM:    [/usr/bin/vim] VIM - Vi IMproved 8.2 (2019 Dec 12, compiled Oct 01 2021 01:51:08)
CURL:   [/usr/bin/curl] curl 7.74.0 (x86_64-pc-linux-gnu) libcurl/7.74.0 OpenSSL/1.1.1n zlib/1.2.11 brotli/1.0.9 libidn2/2.3.0 libpsl/0.21.0 (+libidn2/2.3.0) libssh2/1.9.0 nghttp2/1.43.0 librtmp/2.3
NODE:   [/home/user/.nvm/versions/node/v16.17.0/bin/node] v16.17.0
```

The output will look something like the above.
If any of the commands listed do not have a full path and version next to them, then that program is not installed.

If you run `ls` inside your repo directory, you will notice that the script you just ran created a log file.
It has the same text as what showed up on STDOUT.

2. Use git to add files to track. 

Run the following:

```
$ git add -v .
```

This adds all the files that are in the current directory and lists their names. 

3. Commit the changes. 

```
$ git commit -a -m "Added log file."
```

This commits the change (addition of log file) and adds a comment to the commit.

6. Finally, push the changes.

```
$ git push
```

## All done!

You should be able to see the log file that was created in your GitHub repository now.

The autograder for this assignment is simple.
It is just checking to see that the log file was created by the script.

Now you have everything you need to get started.

Be sure to check out the [Git and GitHub tutorial](./git-and-github.md) contained in this repository. 
It contains a lot of useful information and links that will help you get up and running in GitHub.
