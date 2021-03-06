# Windows 10 and WSL2

This is my configuration to use Windows 10 to run my projects of Testing Automation, in Windows 10. I hope that this document help you too. Good Luck!!!

## Fira Code

The first thing that I installed is the font **Fira Code** is the best font of moment for me, and I like the ligatures. So make download of font in this [link](https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip).

After make download the installation, uising your zip tool uncompress the folder and in sub folder **ttf** select to install all. 


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/install_firacoe_20210419_220613.png" alt="drawing" width="400"/>


## Visual Studio Code

The best IDE and Editor ever! The installation is the classic next, next and finish. But attention in this option window select all options before procede with installtion.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/vs_code_20210419_221220.png" alt="drawing" width="400"/>


After installation of **Visual Studio Code** we will configure the fonts in this case the **FiraCode**. Open the configuration files of **Visual Studio Code** using the shotcurt ***WIN+r*** access the run, and type the command ***code %AppData%\Code\User\settings.json*** your **VSCode** configuration file will be open.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/testing_ligatures_20210419_222951.png" alt="drawing" width="400"/>


Insert configuration below, feel free to change some options ok? I not like the minimap due this I changed the value to false.

```json
{
    "window.zoomLevel": 0,
    "editor.minimap.enabled": false,
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true,
    "editor.fontSize": 12
}
```

Testing the changes in **Visual Studio Code**


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/testing_ligatures_20210419_222951.png" alt="drawing" width="400"/>


Well done, now the basic configuration of **Visual Studio Code** is done, in future we will return here to configuration some things related **WSL2**. :wink:

## Java :coffee: :coffee: :coffee:

Java is the most used programming language, and used to access some things. So we need install and configure Java I prefer use version of LTS of Java. Make download of java in this link [Java 11 LTS](https://www.oracle.com/br/java/technologies/javase-jdk11-downloads.html).

The installation of Java follow the way next, next and finish. After completed the installation run commands below to configure the **Java** environment variables.

Open the coomand line **CMD** with administrator level right! Using the shortcut ***WIN+q*** you open search type ***CMD*** and select to open with administrator level.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/cmd_20210419_224113.png" alt="drawing" width="400"/>


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


## Windows Terminal

The best thing that happened in 2019 was the Windows Terminal launch... Awesome!!! Install Windows terminal from the MS Store.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/win_termial_20210420_085218.png" alt="drawing" width="400"/>


After installation you can press the shotcurt **WIN+r** and type in Run the letters ***wt*** andd press OK or type **ENTER**.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/run_win_terminal_20210420_085538.png" alt="drawing" width="400"/>


This is the first apparence of Windows Terminal, but is possible you configure some things to more customization.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/first_win_terminal_20210420_085731.png" alt="drawing" width="400"/>


## The WSL 2

Now we will start the WSL 2 configuration in Windows 10. To create a great dev and automation testing environment for us. If you want know more about WSL 2 click read the offical documentation in Microsoft Site in this [link](https://docs.microsoft.com/en-us/windows/wsl/about)

The first thing to start is open the **PowerShell** with adminstrator level.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/wt_adm_level_20210420_094201.png" alt="drawing" width="400"/>


:warning: :warning: Now Attention in commands below ok!? :warning: :warning:

After openning the **wt** (***wt is Windows Terminal***) the default shell before any configuration, is the **PowerShell**.

Run command to enable **Windows Subsystem for Linux** run the command below:

```batch
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

Example of command running below.

```batch
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

Try the new cross-platform PowerShell https://aka.ms/pscore6

PS C:\Users\yourusername> dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

Deployment Image Servicing and Management tool
Version: 10.0.19041.844

Image Version: 10.0.19042.928

Enabling feature(s)
[==========================100.0%==========================]
The operation completed successfully.
PS C:\Users\yourusername>
```

Now run command to enable the **Virtual Machine feature** run command below:
```batch
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

Exemple of command running below:

```batch
PS C:\Users\yourusername> dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

Deployment Image Servicing and Management tool
Version: 10.0.19041.844

Image Version: 10.0.19042.928

Enabling feature(s)
[==========================100.0%==========================]
The operation completed successfully.
PS C:\Users\yourusername>
```

After the completed this command restart your machine.

Select the default version of your WSL running command below.

```batch
wsl --set-default-version 2
```

Now we need make a download of Linux Kernel Update in this [link](https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi).

The installation is classic, next next and finishing.

Well done, the **WSL2** was installed with sucess, next steps is go to ***Microsoft Store*** and make download of you favorite flavor.

I'm more familiar with Ubuntu, due this I'll select the LTS version. Click in **GET** and waiting the download.


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/ubuntu_lts_20210426_215703.png" alt="drawing" width="400"/>


After completed the installation, the **Ubuntu** will be avaiable in Start Menu and in the **Windows Terminal**. Open your **Ubuntu** in Start Menu, after open the installation will be completed and some options will be displayed to complete the installation see the images below.

* Click in **Launch**.


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/launch_lts_20210426_220254.png" alt="drawing" width="400"/>


* Wating the installation conclude.


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/waiting_installing_20210426_220337.png" alt="drawing" width="400"/>


* Define an ***username*** and ***password***.


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/define_user_name_20210426_220404.png" alt="drawing" width="400"/>


* Now the installation was done and is time to start the ***Ubuntu*** configuration.


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/installation_done_20210426_220518.png" alt="drawing" width="400"/>


Now we can access the Linux sub system using the **Windows Terminal**. 


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/ubuntu_in_terminal_20210426_221358.png" alt="drawing" width="400"/>


To verify if you run the **WSL2** run in your **PowerShell** the command *wsl -l -v*, this command return the **NAME** of your distro, **STATE** and the **VERSION** that indicate the **WSL** that is running for your Linux distro.

```batch
PS C:\Users\yourusername> wsl -l -v
  NAME                  STATE           VERSION
* Ubuntu-20.04          Running         2
PS C:\Users\yourusername>
```

## Customization of Windows Terminal

You see in previous print that the default shell in our **Windows Terminal** is **PowerShell** now we will configure to define our ***Linux*** system was defaul terminal.
Because the WSL2 we can work with Linux in same time that we using the **Linux**.

Open your ***Windows Terminal*** and type **CONTROL+COMMA** to access the configuration, and select to open ***JSON*** file.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Procedure/Windows10andWSL/Images/json_wt_20210421_183629.png" alt="drawing" width="400"/>


This is the default configuration of **OpenSuse**.

```json
   {
                "guid": "{914a0d3c-9db4-56f8-a8ac-65f4b7ea8b09}",
                "hidden": false,
                "name": "Ubuntu-20.04",
                "source": "Windows.Terminal.Wsl"
            }
 ```
 
 The first thing is set the default **guid** of our **Linux** in this line of ***JSON*** file change **guid** of Linux.
 
 **FROM**
 
 ```json
 "defaultProfile": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
 ```
 
 **TO**
 ```json
 "defaultProfile": "{914a0d3c-9db4-56f8-a8ac-65f4b7ea8b09}",
 ```
 
 Other things that we set is related to layput of terminal. See below the changes. You can see in references the more information abaout the customization of **Windows Terminal**.
 
 The other configurations that we will change are related to ***fonts*** and other things.
 
 * Name that will be displayed in top of terminal.
 
 ```json
  "name": "Ubuntu",
 ```
 
 * Path of icon that will be displayed.
 
  ```json
  "icon":"C:\\Users\\yourusername\\Documents\\Images\\icon\\Ubuntu.png",
 ```
  
 * Starting Directory indicate the directory that will be open when you open the Windows Terminal.

```json
"startingDirectory": "//wsl$/Ubuntu-20.04/home/yourlinuxusername",
```
  
 * Type of font, we will use the ***Fira Code*** with this the ***Ligatures*** will be enabled.

```json
"fontFace": "Fira Code",
```

 * Define the font size.
```json
"fontSize": 9,
```

* The cursor color and shape, select your favorite color in ***HEX*** and the shapes example: ***bar***, ***emptyBox***, ***filledBox***, ***underScore***, and ***vintage***.

```json
  "cursorColor": "#7ef33a",
  "cursorShape": "filledBox",
```

This is my file, to not extend more the configuration, if you can customize more see references below.

```json
    {
                "guid": "{914a0d3c-9db4-56f8-a8ac-65f4b7ea8b09}",
                "hidden": false,
                "name": "openSUSE",
                "icon": "C:\\YourPath\\image_one.png",
                "backgroundImage": "C:\\YourPath\\image_two.png",
                "backgroundImageOpacity" : 0.5,
                "fontFace": "Fira Code",
                "fontSize": 9,
                "cursorColor": "#7ef33a",
                "cursorShape": "filledBox",
                "acrylicOpacity": 0.5,
                "useAcrylic": true,
                "closeOnExit": true,
                "background": "#2e3436",
                "padding": "0, 0, 0, 0",
                "snapOnInput": true,
                "source": "Windows.Terminal.Wsl"
            }
```

In this point the windows configuration was ended to use ***New Windows Terminal***.

## HyperJs


<img align="center" src="https://github.com/landex/Linux/blob/main/UbuntuWSL/images/hyper_20210526_131743.png" alt="drawing" width="100"/>


Maybe you can another terminal to use in your windows, you can use the Hyper JS to use in WSL2. The installation is typically run NEXT and NEXT and Finish.

After completed the installation we will configure ***HyperJS*** to use ***WSL2***.

* Configure the WSL access in ***HyperJS*** by default

Add the configuration below you when you open the ***HyperJS*** the same will be open ***WSL System*** installed in your computer.

The configuration file stay in *C:\Users\your_username\AppData\Roaming\Hyper*, the file ***.hyper.js*** you will edit.

You change these paramters below.

* FROM:

```JavaScript
shell: '',
shellArgs: ['--login'],
```

* TO:

```JavaScript
    shell: 'C:\\Windows\\System32\\wsl.exe',
    shellArgs: ['~'],
```

Well done now when you open ***HyperJS*** terminal, will open the your WLS system installed.

## Ubuntu-20.04 LTS the Linux configuration

Now we will configure the **Linux** terminal of Ubuntu-20.04 LTS, we will configure the bash and the package and Install the some resource and updates.

See more details about my **Linux** configuration in [Ubuntu-20.04 LTS in WSL2](https://github.com/landex/Linux/blob/main/UbuntuWSL/UbuntuWSLConfig.md).

## Commands and Trick to help you when use WSL2.

Below have a list of commands and tricks that is useful in WSL2. (▀̿Ĺ̯▀̿ ̿)

* Commant to verify distros running

```batch
PS C:\Users\yourusername> wsl --list --running
```

* Command to stop the distro exectuion 

```batch
PS C:\Users\yourusername> wsl --terminate <distro_name>
```

* Command to shut down the distro exectuion 

```batch
PS C:\Users\yourusername> wsl --shutdown
```

## WSL2 config file

Limiting the use of machine resources, by default the WSL2 will use all machine resources avaiable to virtualizarion of you Linux distro, but you can create a ***wslconfig*** file to limit the resources that WSL2 will use.

Before create a file, you need shutdown the wsl running command below.

```batch
PS C:\Users\yourusername> wsl --shutdown
```

To create the file you access you **Windows User** directory ***C:\Users\yourusername\.wslconfig***. The file use same structure of **ini** file.

Below have a simple example, to limit the resources.

```ini
[wsl2]
memory=2GB
processors=2
localhostForwarding=true
```

### References

:point_right: [FiraCode](https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip)

:point_right: [VSCode](https://code.visualstudio.com/)

:point_right: [Java Configs](https://www.codejava.net/java-core/how-to-set-environment-variables-for-java-using-command-line)

:point_right: [Windows Terminal Docs](https://docs.microsoft.com/en-us/windows/terminal/)

:point_right: [Windows Terminal Customization](https://alexanderallen.medium.com/windows-terminal-changing-the-default-shell-c4f5987c31)

:point_right: [Windows Terminal Customization More Tricks](https://devblogs.microsoft.com/commandline/introducing-windows-terminal/)

:point_right: [Windows Terminal Backgroud](https://www.thomasmaurer.ch/2019/09/how-to-change-the-windows-terminal-background-image/)

:point_right: [WSL](https://docs.microsoft.com/en-us/windows/wsl/)

:point_right: [WSL config MS](https://docs.microsoft.com/en-us/windows/wsl/wsl-config)

:point_right: [WSLconfig](https://www.bleepingcomputer.com/news/microsoft/windows-10-wsl2-now-allows-you-to-configure-global-options/#:~:text=To%20create%20a%20global%20configuration%20for%20all%20installed%20WSL2%20Linux,wslconfig.)

:point_right: [HyperJS + WSL](https://gist.github.com/leodutra/a6cebe11db5414cdaedc6e75ad194a00)

