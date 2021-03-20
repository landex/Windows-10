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


Now we will install the git, and we will use the git-bash to configure the best terminal ever of ***Microsoft*** first step make download of [Git}(https://git-scm.com/download/win).

In this moment we use the tipical installation, the instalation of Git you select the default configurations, next, next, and finish!!!

After installation now we will go to the best terminal of **Windows**.


## References

[Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing)

[Visual Studio Code](https://code.visualstudio.com/)

[JAVA Command Line Configuration](https://www.codejava.net/java-core/how-to-set-environment-variables-for-java-using-command-line)

[Java Configuration by GUI](https://javatutorial.net/set-java-home-windows-10)

[More About Setx Win Variables](https://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp/832962#832962)

