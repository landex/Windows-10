# Windows 10!!!


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/New_Images/windows_10_logo.png" alt="drawing" width="100"/>


Here go again. :metal::metal::metal:

The idea of this procedure is to show who some configurations could help to use some tools and programs better in Windows 10.


### Fira Code 


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/fira_code.png" alt="drawing" width="300"/>


We will start with font, and for me after discovering last year (2020) the **Fira Code** with **ligatures** is the best font for me. To install we will use the classic Windows installation. You can make download this link [Fira Code Download](https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip).

After the download is done, to install **Fira Code**, you need to access the ***Fira_Code_v5.2\ttf*** and select all fonts, and select to install for all users, equals screen shoot below.

<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/New_Images/Install_fonts_20210317_221238.png" alt="drawing" width="300"/>


In the future section of this procedure, we will configure **Visual Studio Code** and **Terminal** to use **Fira Code**, but you can use the fonts in other preferred programs for example ***Office Package***.


### Visual Studio Code


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/visual_studio_logo_20210314.png" alt="drawing" width="200"/>


So for me is the best editor/IDE for the programming of past, present, and future. :stuck_out_tongue closed eyes:

You can install the **Visual Studio Code** make the download in [VSCode Download](https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user).

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


## References

[Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing)

[Visual Studio Code](https://code.visualstudio.com/)

[JAVA Command Line Configuration](https://www.codejava.net/java-core/how-to-set-environment-variables-for-java-using-command-line)

[Java Configuration by GUI](https://javatutorial.net/set-java-home-windows-10)

[More About Setx Win Variables](https://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp/832962#832962)

