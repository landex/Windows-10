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

First step perform the download of [Java](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html#license-lightbox) , we will use the JDK 11 LTS. Make download of **Java.exe** run classical installation... Next...Next... Finishi!!!

After installation follow this configuration, you need access the **System Properties** again to configure **Java** or we have a better alternative that is use the command line to configure... I think that use command line is cool.

First you need open *CMD* with ADM level to run commands. Press ***WIN*** button and ***Q*** in search box type ***CMD***, click with right mouse button and select ***Run as Administrator***.


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

### Cmder

For me the Linux or Unix terminal is the best of World, there is not other equals. So to solve this problem in Windows I use the **Cmder** to emulte the Linux terminal in Windows.

Access the Cmder download page, and make download of full version of **Cmder** attention **FULL VERSION**!!!

After completed the download, unzip the folder and move to ***C:*** to organize I created in ***C:*** a subdirectory called ***MyApps***, but fell free to custom your configuration.

Now using command line ***cmd*** we will insert the environment variables. But you need open ***cmd*** with administrator user account to edit and add the environement variables.

* **Insert CMDER_ROOT varibale**

```bat
C:\Windows\system32>setx -m CMDER_ROOT "C:\MyApps\cmder"

SUCCESS: Specified value was saved.

C:\Windows\system32>
```

* **Insert %ConEmuDir% variable**

```bat
C:\Windows\system32>setx -m %ConEmuDir% "[cmder_root]\vendor\conemu-maximus5"

SUCCESS: Specified value was saved.

C:\Windows\system32>
```

* **Insert in PATH the variable CMDER_ROOT**

```bat
C:\Windows\system32>setx -m PATH "%PATH%;%CMDER_ROOT%"

SUCCESS: Specified value was saved.

C:\Windows\system32>
```

Testing the configuration, open ***Run*** shotcurt win+r, and type ***cmder*** and press enter, if ***cmer*** opened, well done, configuration successfull.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20225726.png" alt="drawing" width="400"/>


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20225906.png" alt="drawing" width="400"/>


***THE END***

## References

[Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing)

[Visual Studio Code](https://code.visualstudio.com/)

[JDK 11 LTS](https://www.oracle.com/br/java/technologies/javase-jdk11-downloads.html)

[JAVA Command Line Configuration](https://www.codejava.net/java-core/how-to-set-environment-variables-for-java-using-command-line)

[Java Configuration by GUI](https://javatutorial.net/set-java-home-windows-10)

[More About Setx Win Variables](https://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp/832962#832962)

[Cmder](https://cmder.net/)

[Cmder Configuration](https://kags.me.ke/post/cmder-commander-console-for-windows/#:~:text=To%20install%2C%20visit%20Cmder%20website,for%20modifying%20the%20configuration%20files.)
