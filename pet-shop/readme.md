# PetShop

Exemplo de uma aplicação Java/Web.

### Para iniciar o Derby

`mvn exec:java@derby-start`

### Para parar o Derby

`mvn exec:java@derby-stop`

## Executar

```sh
mvn tomcat7:run
```

## Preparação do projeto

Instalação do Maven Wrapper. Para possibilitar executar o projeto mesmo que o Maven não esteja instalado e configurado.

```sh`
mvn -N io.takari:maven:0.7.6:wrapper -Dmaven=3.6.1
```
