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



### References

:point_right: [FiraCode](https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip)

:point_right: [VSCode](https://code.visualstudio.com/)

:point_right: [Java Configs](https://www.codejava.net/java-core/how-to-set-environment-variables-for-java-using-command-line)
