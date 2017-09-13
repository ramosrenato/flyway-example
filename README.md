## Projeto exemplo flyway

O [Flyway](https://flywaydb.org/) é uma ferramenta, de código aberto, para migração de banco de dados. 

Baseada em 6 comandos:

- migrate 
- clean
- info
- validate
- baseline
- repair


## Documentação oficial do flyway

- [https://flywaydb.org/documentation/](https://flywaydb.org/documentation/)


## Executar o projeto

Para executar o projeto é necessário que as seguintes ferramentas estejam instaladas e configuradas.

- [Maven 3.x](https://maven.apache.org/download.cgi)
- [Git bash](https://git-scm.com/downloads) ***Windows**
- [Docker](https://www.docker.com/)

Após a instalação e configuração das ferramentas acima, execute seguintes passos:

1. Abra o git bash e acesse o diretório principal do projeto `flyway-example`.

2. Faça um build do projeto com atualização de todas as dependências.
```console
mvn clean install -U
```

3. Ainda no git bash, acesse o diretório `flyway-example/docker`.
```console
cd flyway-example/docker
```

4.  Execute o script `start.sh`.
```console
sh start.sh
```

5. Aguarde até que o container do mysql esteja rodando.

6. Volte ao diretório princial do projeto `flyway-example`.
```console
cd ..
```

7. Execute o comando `info` para verificar se o flyway está devidamente configurado e os scripts pendentes foram reconhecidos.
```console
mvn flyway:info
```

8. Execute o comando `migrate` para aplicar todos os scripts pendentes até a versão target, no banco de dados que está rodando no container.
```console
mvn flyway:migrate
```

9. Execute novamente o comando `info` para verificar se os scripts pendentes foram aplicados com sucesso.
```console
mvn flyway:info
```

10. Acesse o banco de dados com qualquer ferramenta de gerenciamento para verificar todas as alterações.


11. Quando terminar, acesse o diretório `flyway-example/docker` e execute o comando stop.sh.
```console
cd flyway-example/docker
sh stop.sh
```

    
