## Windows 10 Chocolatey

<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/win_and_choco/win_10_choco_20210310_082401.jpg" alt="drawing" width="400"/>


Windows 10 with Chocolatey, is the new procedure to use Windows 10 with Chocolatey package manage.

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

***THE END***

## References

[Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing)


[Visual Studio Code](https://code.visualstudio.com/)
