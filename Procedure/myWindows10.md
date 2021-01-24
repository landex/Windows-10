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

In search type ***system env*** access the option below.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/system_env_20210118_225223.png" alt="drawing" width="400"/>



In this window select ***Environment Variables***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210118%20_225409.png" alt="drawing" width="400"/>



We will create an **System variables**, click in **NEW** and define the variable name equals ***CMDER_ROOT*** and the variable value equals ***the path of your Cmder unconpress folder***, and click in ***OK*** see example below.



System Variables.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210118_225530.png" alt="drawing" width="400"/>


New Variable.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210118_225816.png" alt="drawing" width="400"/>



Now we will added the other varibale, so click in ***New*** again ans in variable name type ***%ConEmuDir%*** and in variable value type ***[cmder_root]\vendor\conemu-maximus5*** and click in ***OK***



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot_20210118_231509.png" alt="drawing" width="400"/>



Now we need insert variable in ***Path***. Select ***path*** row and click in ***Edit***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20083750.png" alt="drawing" width="400"/>



In new window open, click in ***new***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20084053.png" alt="drawing" width="400"/>



Add the path of ***cmder***.



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20084155.png" alt="drawing" width="400"/>



Well done, close click in ***OK*** and ***OK*** again in next window. And now restar you computer.

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
[
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
        ]
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





### Java

### Ruby

### Python


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

[Bash Wikipedia](https://en.wikipedia.org/wiki/Bash_(Unix_shell))

[Bash Configurations Files](https://wiki.archlinux.org/index.php/bash)
