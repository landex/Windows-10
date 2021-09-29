## Verify the $PROFILE

```powershell
echo $PROFILE
```

## Example of alias creation

```powershell
New-Alias -Name <Testing> -Value '<path>'
```

## Example of function
```powershell
Function JUPYTER {Start-Job{jupyter-lab}}
```

## Example of alias that call function

```powershell
Set-Alias -Name jlab -Value JUPYTER
```

## Enable to run script
```powershell
Set-ExecutionPolicy RemoteSigned
```

