## Projeto exemplo flyway

O [Flyway](https://flywaydb.org/) é uma ferramenta de migração de banco de dados de código aberto. 

Baseada em 6 comandos:

- migrate 
- clean
- info
- validate
- baseline
- repair


## Documentação oficial do flyway

- https://flywaydb.org/documentation/


## Executar o projeto

1. acesse o diretório [flyway-example/docker](#).
2. execute o script start.sh.
3. aguarde até que o container do mysql esteja rodando.
4. acesse o diretório princial do projeto flyway-example.
5. execute o comando [mvn:flyway info](#) para verificar se o flyway está devidamente configurado e os scripts pendentes foram reconhecidos.
6. execute o comando [mvn:flyway migrate](#).
7. execute novamente o comando [mvn:flyway info](#) para verificar se os scripts pendentes foram aplicados com sucesso.
8. acesse o banco de dados com qualquer ferramenta de gerenciamento para verificar todas as alterações.
9. quando terminar, acesse o diretório [flyway-example/docker](#) e execute o comando stop.sh.


    
