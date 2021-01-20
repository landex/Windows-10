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



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20231513.png" alt="drawing" width="400"/>



Oh!!! But is the ***PowerShell*** with tabs... I hate... No is better than this, is a fully customizable terminal in Windows. But why not we can use only ***Cmder***.


This is a ***Windows Terminal*** face



<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/Screenshot%202021-01-19%20225906.png" alt="drawing" width="400"/>



### Java

### Ruby

### Python


## References

[Fira Code](https://github.com/tonsky/FiraCode/wiki/Installing)

[Visual Studio Code](https://code.visualstudio.com/)

[Cmder](https://cmder.net/)

[Cmder Configuration](https://kags.me.ke/post/cmder-commander-console-for-windows/#:~:text=To%20install%2C%20visit%20Cmder%20website,for%20modifying%20the%20configuration%20files.)

[Windows Terminal](https://en.wikipedia.org/wiki/Windows_Terminal)
