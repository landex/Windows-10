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
chsh -s $(which zsh)
```


### References

[Docker](https://docs.docker.com/docker-for-windows/install/)

[Docker and WSL](https://docs.docker.com/docker-for-windows/wsl/)

[WSL](https://docs.microsoft.com/en-us/windows/wsl/)

[OpenSuse Documentation](https://doc.opensuse.org/)

[Installing ZSH OpenSuse](https://thecodersblog.com/installing-zsh-oh-my-zsh-on-linux/)

