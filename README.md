# systemUpdate
Um bash script simples para realizar atualizações e limpeza do sistema! 

## Arquivos presentes: 
1. Script que irá rodar no seu shell
2. Arquivo de texto que irá utilizar para verificar a integridade. 

## Verificação de Integridade do script
Para verificar a integridade do script, siga os passos abaixo:

1. Baixe o script e o arquivo de hash.
2. Use o seguinte comando para verificar o hash:
 ```bash
   sha256sum -c hash_systemUpdate.txt
 ```

Se o hash coincidir, você verá uma mensagem indicando SUCESSO!, ou seja, o script está íntegro. 
Caso contrário, pode haver um problema de integridade.

## Execução com Permissões:
**Permissões**: O script pode requerer permissões de superusuário (sudo) para executar.
Certifique-se de ter as permissões necessárias.

#### Torne o script executável:
```bash
sudo chmod+x <nome do script>
```

#### Execute o script:
```bash
systemUpdate.sh
```



## Limpeza de Cache do Navegador

Este script realiza a limpeza do cache dos navegadores instalados, como Firefox e Chrome. Isso pode ajudar a liberar espaço em disco e resolver problemas de carregamento de páginas.

**Impacto**: A limpeza do cache pode **resultar na perda de dados de sessões ativas e login em sites**(caso não queira limpaz a cache dos navegadores, remova os comandos).

**Recomendação**: Verifique se você está disposto(a) a perder dados de sessão antes de executar o script, especialmente se você estiver logado em contas importantes.



Desenvolvido ❤️ por Bianca G
