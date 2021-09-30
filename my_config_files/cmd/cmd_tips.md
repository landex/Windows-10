# Formatando via linha dde comando

Nestes passos abaixo vamos mostrar como formatar usando a linha de comando.

* Deve ser aberto o ***command*** como *ADM*.

Executar os comandos abaixo:

### Iniciar a ferramenta
```batch
diskpart
```

### Listar os discos
```batch
list disk
```

### Selecionar o disco a ser formatado

```batch
select disk <num_disk>
```

### Limpando os dados
```batch
clean 
``` 

### Criando partição
```batch
create partition primary
```

### Formatação rápida
```batch
format fs=ntfs quick
```
OBS: fs pode ser *fat32*, *exfat*, *fat*

### Formatando de forma lenta(normal)
```batch
format fs=nfs
```
