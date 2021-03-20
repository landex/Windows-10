# Windows 10!!!


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/New_Images/windows_10_logo.png" alt="drawing" width="100"/>


Here go again. :metal::metal::metal:

The idea of this procedure is to show who some configurations could help to use some tools and programs better in Windows 10.


### Fira Code 


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/fira_code.png" alt="drawing" width="300"/>


We will start with font, and for me after discovering last year (2020) the **Fira Code** with **ligatures** is the best font for me. To install we will use the classic Windows installation. You can make download this link [Fira Code](https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip).

After the download is done, to install **Fira Code**, you need to access the ***Fira_Code_v5.2\ttf*** and select all fonts, and select to install for all users, equals screen shoot below.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/New_Images/Install_fonts_20210317_221238.png" alt="drawing" width="300"/>


In the future section of this procedure, we will configure **Visual Studio Code** and **Terminal** to use **Fira Code**, but you can use the fonts in other preferred programs for example ***Office Package***.


### Visual Studio Code


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/visual_studio_logo_20210314.png" alt="drawing" width="200"/>


So for me is the best editor/IDE for the programming of past, present, and future. :stuck_out_tongue closed eyes:

You can install the **Visual Studio Code** make the download in [VSCode](https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user).

The installation is the classic ***next,next,next and finish***. After the installation, we can configure de **Fira Code** and **Ligatures** see examples of the configuration below. 

To open the configuration file press the command ***CONTROL+,(COMMA)***.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-16%20220234.png" alt="drawing" width="400"/>


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-16%20220516.png" alt="drawing" width="400"/>


When file is open the configuration below will be displayed.

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


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-16%20222612.png" alt="drawing" width="300"/>


The configuration done to Visual Studio Code.

### Java :coffee: :coffee: :coffee:

Java is the most used programming language, and used to access some things. So we need install and configure **Java** I prefer use version of LTS of **Java**. Make download of java in this link [Java 11 LTS](https://www.oracle.com/br/java/technologies/javase-jdk11-downloads.html).

To configure you need open command line of windows with ***Adminstrator Level***, so to open type Press ***WIN*** button and ***Q*** in search box type ***CMD***, click with right mouse button and select ***Run as Administrator***.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/search_20210310_185900.png" alt="drawing" width="400"/>


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/Screenshot_20210310_192138.png" alt="drawing" width="400"/>


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
Now open the ***CMD*** and test if Java was configred with success.

Verify the **Java Version** running command below.

```batch
C:\Users\yourusername>java -version
java version "11.0.10" 2021-01-19 LTS
Java(TM) SE Runtime Environment 18.9 (build 11.0.10+8-LTS-162)
Java HotSpot(TM) 64-Bit Server VM 18.9 (build 11.0.10+8-LTS-162, mixed mode)
C:\Users\yourusername>
```

Verify the **Javac Version** Java is the version of Java compiler.

```batch
C:\Users\yourusername>javac -version
javac 11.0.10
C:\Users\yourusername>
```

Well done, the Java configuration is ok, if the your results are equals that the displayed above.

## Git 


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/git_logo.png" alt="drawing" width="200"/>


Now we will install the git, and we will use the git-bash to configure the best terminal ever of ***Microsoft*** first step make download of [Git](https://git-scm.com/download/win).

In this moment we use the tipical installation, the instalation of Git you select the default configurations, next, next, and finish!!!

After installation now we will go to the best terminal of **Windows**.

### Windows Terminal


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/new_windows_terminal.png" alt="drawing" width="200"/>


The best thing that happened in 2019 was the Windows Terminal launch... Awesome!!! Install Windows terminal from the MS Store.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20230930.png" alt="drawing" width="400"/>


After installation you can press the shotcurt win+r and type in ***Run*** the letters **wt** andd press **OK**.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20232242.png" alt="drawing" width="400"/>


Oh!!! But is the ***PowerShell*** with tabs... I hate... No is better than this, is a fully customizable terminal in Windows. 

This is a ***Windows Terminal*** face


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20231513.png" alt="drawing" width="400"/>


If you press ***CRTL+,*** will open a configuration file, similar of VSCode, in this file we will customize the ***Windows Terminal*** to integrate with ***Git-Bash*** to use ***Fira Code*** and ***Ligatures***. Is possible configure to TABS open a connection directy with other server machines.

But in this moment I'll show how to customize, fonts, colors and  integrate with ***Git-Bash*** to you use the ***Unix*** commands in your ***Windows Terminal***.

To customize your ***Windows Terminal*** type shortcurt **CTRL+,** (Control and comma). The ***settings.json*** file will be open. We will perform some configurations to customize the terminal.

This is part of configuration that define the terminals that will be open.

```json
            {
                "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
                "name": "Windows PowerShell",
                "commandline": "powershell.exe",
                "hidden": false
            },
            {
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
```

First we need generate a new ***guid*** to insert in configuration. Open PowerShell terminal and type ***New-Guid***, the command will return a code below.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20231513.png" alt="drawing" width="400"/>


We will added some configuration now, see example below. This is my configuration of customization. YOu can see references links in end of this procedure to more information and idea of configuration.

```json
           {
                // Configuration of my terminal to use bash
                "guid": "{f8ab8242-486d-4b8e-a20b-c039e856b7d9}",
                "name": "Terminator",
                "commandline": "C:\\Program Files\\Git\\bin\\bash.exe",
                "startingDirectory": "%USERPROFILE%",
                "icon": "C:\\Program Files\\Git\\ico\\rocket.png",
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
              },
```

The result of my configuration is.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/Screenshot_20210310_215518.png" alt="drawing" width="400"/>


With this my configuration when selected the **Bash.exe** to open in ***Bash*** mode, with this is possible we configure **Bash** files to customize more commands in **Terminal**.

To define your profile with default, add the **guid** of your configuration below.

```json
"$schema": "https://aka.ms/terminal-profiles-schema",
"defaultProfile": "{f8ab8242-486d-4b8e-a20b-c039e856b7d9}",
```

After this configurationb above, when is open the ***Windows Terminal*** by default will open in **Bash** mode, now we can configure the Bash to use native in ***Windows*** with this given more power to user.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/Screenshot_20210310_215840.png" alt="drawing" width="400"/>


Now we go to ***Bash*** configuration, to customize your ***Bash*** commands.

### The Bash !!!


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/bash_logo_one.png" alt="drawing" width="150"/>


**Bash** (Bourne-Again SHell) is a Unix shell and command language written by Brian Fox for the GNU Project as a free software. In this proceure, after configure de Windows Terminal, now is time to configure the ***Bash***.

But before start the configuration, you will see the same details of configurations.

The configurations files.

| File                  | Description                                                                                                                                                                          |
|-----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| /etc/profile          | Sources application settings in /etc/profile.d/\*.sh and /etc/bash.bashrc.                                                                                                           |
| ~/.bash_profile       | Per-user, after /etc/profile. If this file does not exist, ~/.bash_login and ~/.profile are checked in that order. The skeleton file /etc/skel/.bash_profile also sources ~/.bashrc. |
| ~/.bash_logout        | Per-user, after exit of a login shell.                                                                                                                                               |
| /etc/bash.bash_logout | Depends on the -DSYS_BASH_LOGOUT="/etc/bash.bash_logout" compilation flag. After exit of a login shell.                                                                              |
| /etc/bash.bashrc      | Depends on the -DSYS_BASHRC="/etc/bash.bashrc" compilation flag. Sources /usr/share/bash-completion/bash_completion.                                                                 |
| ~/.bashrc             | Per-user, after /etc/bash.bashrc.                                                                                                                                                    |

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

**Placeholders:**

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
| 36   | Cyan	                  | echo -e "Default \e[36mCyan"                  |
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


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/vim_logo.png" alt="drawing" width="100"/>


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
[yourusername@yourcomputername][~] echo 'syntax on' >> .vimrc
```

* Enbale number of lines

```bash
[yourusername@yourcomputername][~] echo 'set number' >> .vimrc
```

In this link have more customization to [vimrc file](https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/#:~:text=The%20%E2%80%9Cvimrc%E2%80%9D%20Vim%20resource,%24HOME%E2%80%9D%20for%20your%20system.) file you can see if you can perform more configuration.

After this see the result below.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210131_121754.png" alt="drawing" width="400"/>


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



### Jupyter Notebook

I like programming in Python and I like the Jupyter Notebook, to install the Jupyter Noebook run command below.

```bash
[yourusername@yourcomputername][~]
 λ pip install notebook
```
After installation run command below to verify if ok, to testing Interactive Python.

```bash
[yourusername@yourcomputername][~]
 λ ipython
Python 3.9.1 (tags/v3.9.1:1e5d33e, Dec  7 2020, 17:08:21) [MSC v.1927 64 bit (AMD64)]
Type 'copyright', 'credits' or 'license' for more information
IPython 7.21.0 -- An enhanced Interactive Python. Type '?' for help.

In [1]:
``` 
To run ***Jupyter Notebook*** run command below.

```bash
[yourusername@yourcomputername][~]
 λ jupyter notebook
[I 10:19:33.024 NotebookApp] Writing notebook server cookie secret to C:\Users\username\AppData\Roaming\jupyter\runtime\notebook_cookie_secret
```

Your brownser will open the URL ***http://localhost:8888/tree***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210227_102314.png" alt="drawing" width="400"/>




**THE END**

## References

[Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing)

[Visual Studio Code](https://code.visualstudio.com/)

[JAVA Command Line Configuration](https://www.codejava.net/java-core/how-to-set-environment-variables-for-java-using-command-line)

[Java Configuration by GUI](https://javatutorial.net/set-java-home-windows-10)

[More About Setx Win Variables](https://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp/832962#832962)

[Git for Windows](https://git-scm.com/download/win)

[Windows Terminal](https://en.wikipedia.org/wiki/Windows_Terminal)

[Windows Terminal Official DOC](https://docs.microsoft.com/en-us/windows/terminal/)

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

[Ruby Official](https://www.ruby-lang.org/en/)

[Python Official](https://www.python.org/)

[Jupyter Notebook](https://jupyter.org/)

[Jupyter Installation](https://jupyter.org/install)
