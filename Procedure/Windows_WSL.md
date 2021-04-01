# Windows WSL 2

This is my configuration of Windows WSL 2 in my Windows 10.

So to install we will make download of Docker Desktop to windows, after installation the system will restarted and a message below will be show.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/wsl_20210327_221900.png" alt="drawing" width="400"/>


To solve this you can install this update, [WSL Update](https://docs.microsoft.com/en-us/windows/wsl/install-win10#step-4---download-the-linux-kernel-update-package).

After proced with the classical instalation, you will select your **Linux** flavor. I selected the **OpenSuse 15.4 Leap**, after installation automatically the option in your ***Windows Terminal*** to launch OpenSuse will apear.

* Selected **OpenSuse 15.4**


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/suse_20210330_222531.png" alt="drawing" width="400"/>


* Option in **Windows Terminal**, about the **Window Terminal** you can configure see details [here](https://github.com/landex/Windows-10/blob/main/Procedure/Windows.md).


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/Suse2_20210330_222646.png" alt="drawing" width="400"/>


* The **OpenSuse** opened


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/suse_open_20210331_212324.png" alt="drawing" width="400"/>



The **Open Suse** configuoration, in below lines have  my configuration to use ***Open Suse*** with **WSL2**.

## Open Suse

After installation the first command to run, when you open the **Suse** run command below to install updates.

```bash
sudo zypper refresh && sudo zypper update
```

After installing the updates, now we will install the **ZSHELL**.

```bash
sudo zypper install zsh
```

Run command below to set the default shell

```bash
sudo usermod -s /usr/bin/zsh $(whoami)
```

After this is necessary close and open terminal, due we not have reboot when using WSL. After close and open the window below will be appear.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/ZSH_01_20210331_215400.png" alt="drawing" width="400"/>


### HISTORY

* Select the option **1**, in this window to start the configuration. My configuration is this, after selected the defaults configurations.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/ZSH_HIST_20210331_221200.png" alt="drawing" width="400"/>


### COMPLETION

* Select the option **2** and click **ENTER**, to start de configurartion, select only option **1**.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/ZSH_COMP_20210331_221501.png" alt="drawing" width="400"/>



### EDITING COMMAND LINES

* Select the option **3** and ***1*** in next window and ***v***.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/ZSH_EDIT_20210331_221901.png" alt="drawing" width="400"/>


After the configuration above, select option **4** and turn on all features, the configuration stay equals.


<img align="center" src="https://github.com/landex/Windows-10/blob/main/Images/WindowsWSL/ZSH_FEATURES_20210331_222401.png" alt="drawing" width="400"/>


When returned to main window, type **0** to confirm all changes.

A ***.zshrc*** file will be created in your home directory

```bash
cat .zshrc
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yourusername/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
```



### References

[Docker](https://docs.docker.com/docker-for-windows/install/)

[Docker and WSL](https://docs.docker.com/docker-for-windows/wsl/)

[WSL](https://docs.microsoft.com/en-us/windows/wsl/)

[OpenSuse Documentation](https://doc.opensuse.org/)

[Installing ZSH OpenSuse](https://thecodersblog.com/installing-zsh-oh-my-zsh-on-linux/)

