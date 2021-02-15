# Windows 10

### Fira Code

I said in the past, for me is the best font to development, and to work in terminal.

Make download of font, and uncompress the zipped folder downloaded. Open **ttf** folder and using right click, select install for all users, see prints below.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/202001162112.png" alt="drawing" width="400"/>



After this you can use the Fira Code in all applications compatibles included the Office...

### Visual Studio Code

So for me is the best editor of present, during when I type this file.  :stuck_out_tongue_closed_eyes:

The Installation is the classic of Windows next :arrow_right: next :arrow_right: Finishing!

We will see here how to configure ***Fira Code*** in ***Visual Studio Code*** see below.

To configure the ***Fira Code*** and enable ***Ligatures***.

Type ***Crtl+,(comma)*** to open settings. In search field type *font*, scrool page to find the *edit in settings.json*.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-16%20220234.png" alt="drawing" width="400"/>



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-16%20220516.png" alt="drawing" width="400"/>



When file is open the configuration below will be displayed.

```json
{
    "window.zoomLevel": 0,
    "editor.minimap.enabled": false,
    "editor.fontLigatures": null
}
```

You ad the configuration below.

```json
{
    "window.zoomLevel": 0,
    "editor.minimap.enabled": false,
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true,
    "editor.fontSize": 12
}
```
After complete the configuration, save the ***json*** file and testing, see result below.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-16%20222612.png" alt="drawing" width="400"/>



The configuration done to Visual Studio Code.

### Cmder

For me the Linux or Unix terminal is the best of World, there is not other equals. So to solve this problem in Windows I use the **Cmder** to emulte the Linux terminal in Windows.

Access the Cmder download page, and make download of full version of **Cmder** attention **FULL VERSION**!!!

After completed the download, unzip the folder and move to ***C:*** to organize I created in ***C:*** a subdirectory called ***MyApps***, but fell free to custom your configuration.

Now using command line ***cmd*** we will insert the environment variables. But you need open ***cmd*** with administrator user account to edit and add the environement variables.

* Insert CMDER_ROOT varibale

```bat
C:\Windows\system32>setx -m CMDER_ROOT "C:\MyApps\cmder"

SUCCESS: Specified value was saved.

C:\Windows\system32>
```

* Insert %ConEmuDir% variable

```bat
C:\Windows\system32>setx -m %ConEmuDir% "[cmder_root]\vendor\conemu-maximus5"

SUCCESS: Specified value was saved.

C:\Windows\system32>
```

* Insert in PATH the variable CMDER_ROOT

```bat
C:\Windows\system32>setx -m PATH "%PATH%;%CMDER_ROOT%"

SUCCESS: Specified value was saved.

C:\Windows\system32>
```


Testing the configuration, open ***Run*** shotcurt win+r, and type ***cmder*** and press enter, if ***cmer*** opened, well done, configuration successfull.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20225726.png" alt="drawing" width="400"/>



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20225906.png" alt="drawing" width="400"/>



### Windows Terminal

The best thing that happened in 2019 was the Windows Terminal launch... Awesome!!! Install Windows terminal from the MS Store.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20230930.png" alt="drawing" width="400"/>



After installation you can press the shotcurt win+r and type in ***Run*** the letters **wt** andd press **OK**.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20232242.png" alt="drawing" width="400"/>



Oh!!! But is the ***PowerShell*** with tabs... I hate... No is better than this, is a fully customizable terminal in Windows. But why not we can use only ***Cmder***. Why not!!! The Windows Terminal is better! 


This is a ***Windows Terminal*** face



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20231513.png" alt="drawing" width="400"/>



If you press ***CRTL+,*** will open a configuration file, similar of VSCode, in this file we will customize the ***Windows Terminal*** to integrate with ***Cmder*** to use ***Fira Code*** and ***Ligatures***. Is possible configure to TABS open a connection directy with other server machines.

But in this moment I'll show how to customize, fonts, colors and  integrate with ***Cmder*** to you use the ***Unix*** commands in your ***Windows Terminal***.

To customize your ***Windows Terminal*** type shortcurt **CTRL+,** (Control and comma). The ***settings.json*** file will be open. We will perform some configurations to customize the terminal.

This is part of configuration that define the terminals that will be open.

´´´json

            {
                // Make changes here to the powershell.exe profile.
                "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
                "name": "Windows PowerShell",
                "commandline": "powershell.exe",
                "hidden": false
            },
            {
                // Make changes here to the cmd.exe profile.
                "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
                "name": "Command Prompt",
                "commandline": "cmd.exe",
                "hidden": false
            },
            {
                "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
                "hidden": false,
                "name": "Azure Cloud Shell",
                "source": "Windows.Terminal.Azure"
            }
        
´´´

First we need generate a new ***guid*** to insert in configuration. Open PowerShell terminal and type ***New-Guid***, the command will return a code below.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20231513.png" alt="drawing" width="400"/>



We will added some configuration now, see example below. This is my configuration of customization.

```json

            {
                "guid": "{f8ab8242-486d-4b8e-a20b-c039e856b7d9}",
                "name": "Terminator",
                "commandline": "%CMDER_ROOT%\\vendor\\git-for-windows\\bin\\bash.exe",
                "startingDirectory": "%USERPROFILE%",
                "icon": "%CMDER_ROOT%\\icons\\cmder_blue.ico",
                "fontFace": "Fira Code",
                "hidden": false,
                "acrylicOpacity": 0.5,
                "closeOnExit": true,
                "cursorColor": "#7ef33a",
                "cursorShape": "filledBox",
                "background": "#2e3436",
                "fontSize": 9,
                "padding": "0, 0, 0, 0",
                "snapOnInput": true,
                "useAcrylic": true
              }
```

The result of my configuration is.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-20%20225142.png" alt="drawing" width="400"/>



With this my configuration when selected ***Cmder*** will open in **Bash** mode, with this is possible we configure **Bash** files to customize more commands in **Terminal**.

To define your profile with default, add the **guid**  of your ***Cmder*** configuration below.

```json
"$schema": "https://aka.ms/terminal-profiles-schema",

    "defaultProfile": "{f8ab8242-486d-4b8e-a20b-c039e856b7d9}",

```

After this configurationb above, when is open the ***Windows Terminal*** by default will open ***Cmder*** in Bash mode, now we can configure the Bash to use native in ***Windows*** with this given more power to user.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210122_070819.png" alt="drawing" width="400"/>



Now we go to ***Bash*** configuration.

### The Bash !!!

**Bash** (Bourne-Again SHell) is a Unix shell and command language written by Brian Fox for the GNU Project as a free software. In this proceure, after configure de Windows Terminal, now is time to configure the ***Bash***.

But before start the configuration, you will see the same details of configurations.

The configurations files.

| File            | Description                                                                |
|-----------------|----------------------------------------------------------------------------|
| /etc/profile    | Sources application settings in /etc/profile.d/\*.sh and /etc/bash.bashrc. |
| ~/.bash_profile | Per-user, after /etc/profile. If this file does not exist, ~/.bash_login and ~/.profile are checked in that order. The skeleton file /etc/skel/.bash_profile also sources ~/.bashrc. |
| ~/.bash_logout  | Per-user, after exit of a login shell. |
| /etc/bash.bash_logout | Depends on the -DSYS_BASH_LOGOUT="/etc/bash.bash_logout" compilation flag. After exit of a login shell. |
| /etc/bash.bashrc | Depends on the -DSYS_BASHRC="/etc/bash.bashrc" compilation flag. Sources /usr/share/bash-completion/bash_completion. |
| ~/.bashrc | Per-user, after /etc/bash.bashrc. |

Creating files in home deirectory. Type commands below in home directory.

The exemple to indicate the **home** directory.

```bash
yourusername@yourcomputername ~
λ pwd
/c/Users/yourusername
yourusername@yourcomputername ~
```

Creating the configuration file ***.bash_profile***.

```bash
yourusername@yourcomputername ~
λ touch .bash_profile
yourusername@yourcomputername ~
```

Creating the configuration file ***.bash_logout***.

```bash
yourusername@yourcomputername ~
λ touch .bash_logout
yourusername@yourcomputername ~
```

Creating the configuration file ***.bashrc***.

```bash
yourusername@yourcomputername ~
λ touch .bashrc
yourusername@yourcomputername ~
```

After created the configuration files, we will add some configurations.

* ***.bash_profile*** add this configuration in ***.bash_profile***.

```bash
yourusername@yourcomputername ~
λ cat .bash_profile
if [ -f ~/.bashrc ]; then
           source ~/.bashrc
fi
yourusername@yourcomputername ~
λ
```

* ***.bash_logout*** this files is used when you perform logout of terminal.

Send commands below to configure to clear and reset the terminal after perform de logou.

```bash
yourusername@yourcomputername ~
λ echo 'clear' >> .bash_logout
yourusername@yourcomputername ~
λ echo 'reset' >> .bash_logout
yourusername@yourcomputername ~
```

File after configuration.

```bash
yourusername@yourcomputername ~
λ cat .bash_logout
clear
reset
yourusername@yourcomputername ~
λ
```


* ***.bashrc*** this files will be load when you open your terminal, and load configurations.

##### History Configuration.

**HISTFILE** in your ***.bashrc*** you inform the file that will be save history.

```bash
yourusername@yourcomputername ~
echo '# History Configuration' >> .bashrc
echo 'export HISTFILE="/c/Users/yourusername/.bash_history"' >> .bashrc
yourusername@yourcomputername ~
```

***.bashrc*** after this configuration.

```bash
yourusername@yourcomputername ~
λ cat .bashrc
# History Configuration
export HISTFILE="/c/Users/yourusername/.bash_history"
yourusername@yourcomputername ~
```

To ***HISTFILE*** ignore the duplicated item insert the value below in your ***.bashrc***.

```bash
yourusername@yourcomputername ~
λ echo 'export HISTCONTROL=ignoredups' >> .bashrc
yourusername@yourcomputername ~
```

##### PS1 and PS2 - This is not indication of Playstation 1 or Playstation 2... :stuck_out_tongue_winking_eye:

* The PS1: is a primary prompt variable. Currently it holds \u@\h:\w\$ special bash characters. This is the default structure of the bash prompt on many Linux systems and is displayed every time you log in using a terminal. 

* The PS2: bash shell variable is a secondary prompt. This prompt is displayed if the shell waits for a user input, for example you forget to insert second quotation.

The following table lists the possible placeholders that can be used in the PS1 variable:

**placeholders:**

| Code | Effect                                                    |
|------|-----------------------------------------------------------|
| \u   | Username                                                  |
| \h   | Hostname                                                  |
| \w   | Current directory                                         |
| \d   | Current date                                              |
| \t   | Current time                                              |
| \$   | Indicate the root user with '#' and normal users with '$' |
| \j   | Number of currently running tasks (jobs)                  |

In addition to the placeholders, it is possible to add colors and format the text of the PS1 and PS2.

**Formating:**

* SET

| Code | Description                                           | Example                          |
|------|-------------------------------------------------------|----------------------------------|
| 1    | Bold/Bright                                           | echo -e "Normal \e[1mBold"       |
| 2	   | Dim	                                               | echo -e "Normal \e[2mDim"        |
| 4    | Underlined                                            | echo -e "Normal \e[4mUnderlined" |
| 5	   | Blink                                                 | echo -e "Normal \e[5mBlink"      |
| 7	   | Reverse (invert the foreground and background colors) | echo -e "Normal \e[7minverted"   |
| 8	   | Hidden (useful for passwords)                         | echo -e "Normal \e[8mHidden"     |

* RESET

| Code | Description          | Example                                       |
|------|----------------------|-----------------------------------------------|
| 0	   | Reset all attributes | echo -e "\e[0mNormal Text"                    |
| 21   | Reset bold/bright	  | echo -e "Normal \e[1mBold \e[21mNormal"       |
| 22   | Reset dim            | echo -e "Normal \e[2mDim \e[22mNormal"        |
| 24   | Reset underlined	  | echo -e "Normal \e[4mUnderlined \e[24mNormal" |
| 25   | Reset blink	      | echo -e "Normal \e[5mBlink \e[25mNormal"      |
| 27   | Reset reverse        |	echo -e "Normal \e[7minverted \e[27mNormal"   |
| 28   | Reset hidden	      | echo -e "Normal \e[8mHidden \e[28mNormal"     |

**Colors:**

* Foreground (text)

| Code | Description              | Example                                       |
|------|--------------------------|-----------------------------------------------|
| 39   | Default foreground color |	echo -e "Default \e[39mDefault"               |
| 30   | Black	                  | echo -e "Default \e[30mBlack"                 |
| 31   | Red                      | echo -e "Default \e[31mRed"                   |
| 32   | Green	                  | echo -e "Default \e[32mGreen"                 |
| 33   | Yellow	                  | echo -e "Default \e[33mYellow"                |
| 34   | Blue                     | echo -e "Default \e[34mBlue"                  |
| 35   | Magenta                  | echo -e "Default \e[35mMagenta"               |
| 36   |Cyan	                  | echo -e "Default \e[36mCyan"                  |
| 37   | Light gray	              | echo -e "Default \e[37mLight gray"            |
| 90   | Dark gray	              | echo -e "Default \e[90mDark gray"             |
| 91   | Light red                | echo -e "Default \e[91mLight red"             |
| 92   | Light green              | echo -e "Default \e[92mLight green"           |
| 93   | Light yellow             | echo -e "Default \e[93mLight yellow"          |
| 94   | Light blue               | echo -e "Default \e[94mLight blue"            |
| 95   | Light magenta	          | echo -e "Default \e[95mLight magenta"         |
| 96   | Light cyan               | echo -e "Default \e[96mLight cyan"            |
| 97   | White                    | echo -e "Default \e[97mWhite"                 |

* Background

| Code | Color                    | Example                                |
|------|--------------------------|----------------------------------------|
| 49   | Default background color | echo -e "Default \e[49mDefault"        |
| 40   | Black                    | echo -e "Default \e[40mBlack"          |
| 41   | Red                      | echo -e "Default \e[41mRed"            | 
| 42   | Green                    | echo -e "Default \e[42mGreen"          |
| 43   | Yellow                   | echo -e "Default \e[43mYellow"         |
| 44   | Blue                     | echo -e "Default \e[44mBlue"           |
| 45   | Magenta                  | echo -e "Default \e[45mMagenta"        |
| 46   | Cyan                     |	echo -e "Default \e[46mCyan"           |
| 47   | Light gray               | echo -e "Default \e[47mLight gray"     |
| 100  | Dark gray	              | echo -e "Default \e[100mDark gray"     |
| 101  | Light red                | echo -e "Default \e[101mLight red"     |
| 102  | Light green              | echo -e "Default \e[102mLight green"   |
| 103  | Light yellow             | echo -e "Default \e[103mLight yellow"  |
| 104  | Light blue               | echo -e "Default \e[104mLight blue"    |
| 105  | Light magenta	          | echo -e "Default \e[105mLight magenta" |
| 106  | Light cyan               | echo -e "Default \e[106mLight cyan"    |
| 107  | White                    | echo -e "Default \e[107mWhite"         |

All this things only to customize your PS1 and PS2 terminal variables. And other things in your terminal... :sunglasses:

Configuration of my ***PS1*** variable in yours ***.bashrc***.

This is example of my PS1 configuration.

```bash
# PS1 Configuration
export PS1="\e[34m[\e[1m\u\e[0m\e[96m@\h]\e[0m\e[103m\e[30m[\w]\e[0m "
```
The result is.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210130_202318.png" alt="drawing" width="400"/>



To PS2 I'll not make any changes, but still free to make your changes according the possibilities configurations describe above.

Colors in output, now we will configure to display colored when we run, commands equals ***ls*** and  ***grep***.

First we will insert the alias to ***ls***.

```bash
[yourusername@yourcomputername][~] echo "alias ls='ls --color=auto'" >> .bashrc
[yourusername@yourcomputername][~]
```

After this load the ***.bashrc*** again, closeing and open terminal or run command ***sourcer .bashrc***. This is result after this configuration.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210130_215121.png" alt="drawing" width="400"/>



Now we will configure the ***grep*** to coloered the results.

```bash
[yourusername@yourcomputername][~] echo "alias grep='grep --color=auto'" >> ~/.bashrc
[yourusername@yourcomputername][~] echo "alias fgrep='fgrep --color=auto'" >> ~/.bashrc
[yourusername@yourcomputername][~] echo "alias egrep='egrep --color=auto'" >> ~/.bashrc
```

The output after this configurations.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210131_115109.png" alt="drawing" width="400"/>



### VIM

So now we will configure the ***vim***, by defaul when your install ***Cmder*** the ***vim*** comming too. Some times is necessary edit some small file, in local machine or in server, in this case is better user ***vim***. We will create a ***.vimrc*** to insert some configuraitons.

Creating the ***.vimrc*** file in your home directory.

```bash
[yourusername@yourcomputername][~] pwd
/c/Users/yourusername
[yourusername@yourcomputername][~] touch .vimrc
[yourusername@yourcomputername][~] ls -ltra .vimrc
-rw-r--r-- 1 yourusername 197609 0 Jan 31 12:02 .vimrc
[yourusername@yourcomputername][~]
```

After this we will insert some configuration in your ***.vimrc*** file.

* Enable syntax highlights

```bash
[yourusername@yourcomputername][~] ehco 'syntax on' >> .vimrc
```

* Enbale number of lines

```bash
[yourusername@yourcomputername][~] ehco 'set number' >> .vimrc
```

In this link have more customization to [vimrc file](https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/#:~:text=The%20%E2%80%9Cvimrc%E2%80%9D%20Vim%20resource,%24HOME%E2%80%9D%20for%20your%20system.) file you can see if you can perform more configuration.

After this see the result below.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210131_121754.png" alt="drawing" width="400"/>



### Java

Java is the most popular programming language of world, as is most used to access some applications too. Below I'll show you how to configure **Java** in Windows 10.

First step perform the download of Java, we will use the JDK 11 LTS. Make download of **Java.exe** run classical installation... Next...Next... Finishi!!!

After installation follow this configuration, you need access the **System Properties** again to configure **Java** or we have a better alternative that is use the command line to configure... I think that use command line is cool.

First you need open *CMD* with ADM level to run commands. Press ***WIN*** button and type ***CMD*** in search box, click with right mouse button and select ***Run as Administrator***.

Search CMD.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210201_082919.png" alt="drawing" width="400"/>



CMD Opened.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210201_083105.png" alt="drawing" width="400"/>



Run commands below to insert **JAVA** configuration in environment variables. By default if you not changed during installation, the **JAVA** will be installed in this path ***C:\Program Files\Java\jdk-11.0.10*** regarding that we talked about **JAVA 11**.

With this information run commands:

* **JAVA_HOME**

```bat
C:\Windows\system32>setx JAVA_HOME "C:\Program Files\Java\jdk-11.0.10"

SUCCESS: Specified value was saved.

C:\Windows\system32>
```

* **JAVA IN PATH**

```bat

C:\Windows\system32>setx PATH "%PATH%;%JAVA_HOME%\bin";

SUCCESS: Specified value was saved.

C:\Windows\system32>
```

Close your terminal ***CMD*** and open the ***Windows Terminal***. We will run commands below to validate that installation are ok.

***Java -Version***

```bash
[yourusernane@yourcomputername][~] java -version
java version "11.0.10" 2021-01-19 LTS
Java(TM) SE Runtime Environment 18.9 (build 11.0.10+8-LTS-162)
Java HotSpot(TM) 64-Bit Server VM 18.9 (build 11.0.10+8-LTS-162, mixed mode)
[yourusernane@yourcomputername][~]
```

***Javac -Version***

```bash
[yourusernane@yourcomputername][~] javac -version
javac 11.0.10
[yourusernane@yourcomputername][~]
```
Well done, the Java configuration is ok, if the your results are equals that the displayed above. 

### Ruby

Ruby, is a good programming language to testing automation in my opinion, automation of APIS testing and Web Interface automation. I'll testing the Ruby 3.0, in official web site, in download sections I prefer install the ***Ruby 3.0.0-1(x64)*** more downloads options in this link -> [RUBY](https://rubyinstaller.org/downloads/).

The installation is a classic but I prefer custom, see below the options that I use.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210204_224042.png" alt="drawing" width="400"/>



The classic Next and Install.

This window will be open, only close because, is not need select any value.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210204_224456.png" alt="drawing" width="400"/>



After installation we run command below in your **Windows Terminal** and validate that ***Ruby*** work's.

```bash
[yourusername@yourcomputername][~] ruby -v
ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x64-mingw32]
[yourusername@yourcomputername][~]
```

Try the ***irb***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210205_071051.png" alt="drawing" width="400"/>





### Python

The ***Python*** is a other best programming language of world, and now this language stay in *hyper* around the world.

The installation in **Windows** is the classic instalation, the famous next next finish.

But I prefer some customization in my installation, see prints below.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210205_161420.png" alt="drawing" width="400"/>



Select the all otions and click in ***Customize Installation***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210205_161506.png" alt="drawing" width="400"/>



In this window, verify if all options are selected, to proced with installation.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210205_161723.png" alt="drawing" width="400"/>



Now in window **Advanced Options** select all option and select the path that you will install the python, I will use ***C:\MyApps\Python39***, now proced with installation.

In this window select to **Disable Path Lenght Limit**



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210205_162735.png" alt="drawing" width="400"/>



Testing the Python Installation. In your ***Windows Terminal*** type ***python***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210205_163204.png" alt="drawing" width="400"/>



**THE END**



## References


[Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing)

[Visual Studio Code](https://code.visualstudio.com/)

[Cmder](https://cmder.net/)

[Cmder Configuration](https://kags.me.ke/post/cmder-commander-console-for-windows/#:~:text=To%20install%2C%20visit%20Cmder%20website,for%20modifying%20the%20configuration%20files.)

[Windows Terminal](https://en.wikipedia.org/wiki/Windows_Terminal)

[Windows Terminal Official DOC](https://docs.microsoft.com/en-us/windows/terminal/)

[Cmder in Windows Terminal](https://medium.com/talpor/windows-terminal-cmder-%EF%B8%8F-573e6890d143)

[Windows Terminal More Customization](https://medium.com/@callback.insanity/windows-terminal-changing-the-default-shell-c4f5987c31)

[Windows Terminal More Tricks](https://devblogs.microsoft.com/commandline/introducing-windows-terminal/)

[GNU Bash Manual](https://www.gnu.org/software/bash/)

[Bash Man Page](https://linux.die.net/man/1/bash)

[Bash Wikipedia](https://en.wikipedia.org/wiki/Bash_(Unix_shell))

[Bash Archlinux](https://wiki.archlinux.org/index.php/bash)

[Bash Gentoo](https://wiki.gentoo.org/wiki/Bash)

[Bash Profile Vs Bashrc](https://joshstaiger.org/archives/2005/07/bash_profile_vs.html)

[ANSI Scape Code](https://en.wikipedia.org/wiki/ANSI_escape_code)

[PS1 and PS2](https://linuxconfig.org/bash-prompt-basics)

[Bash Gentoo](https://wiki.gentoo.org/wiki/Bash)

[Bash Colors and Formatting](https://misc.flogisoft.com/bash/tip_colors_and_formatting)

[Bash Prompt Customization](https://wiki.archlinux.org/index.php/Bash/Prompt_customization)

[VI Cheat Sheet](https://catonmat.net/ftp/bash-vi-editing-mode-cheat-sheet.pdf)

[Colors during LS commands](https://www.cyberciti.biz/faq/how-to-turn-on-or-off-colors-in-bash/)

[Colors in command grep](https://landoflinux.com/linux_alias_functions.html)

[MAN Page LS](https://linuxcommand.org/lc3_man_pages/ls1.html)

[VIM offical Documentation](https://www.vim.org/docs.php)

[VIMRC options](https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/#:~:text=The%20%E2%80%9Cvimrc%E2%80%9D%20Vim%20resource,%24HOME%E2%80%9D%20for%20your%20system.)

[JDK 11 LTS](https://www.oracle.com/br/java/technologies/javase-jdk11-downloads.html)

[JAVA Command Line Configuration](https://www.codejava.net/java-core/how-to-set-environment-variables-for-java-using-command-line)

[Java Configuration by GUI](https://javatutorial.net/set-java-home-windows-10)

[More About Setx Win Variables](https://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp/832962#832962)

[Ruby Official](https://www.ruby-lang.org/en/)

[Ruby Installers to Windows](https://rubyinstaller.org/downloads/)

[Python Official](https://www.python.org/)

