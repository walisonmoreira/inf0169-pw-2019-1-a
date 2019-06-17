# PetShop

Exemplo de uma aplicação Java/Web.

### Para iniciar o banco de dados Derby

`mvn exec:java@derby-start`

### Para parar o banco de dados Derby

`mvn exec:java@derby-stop`

## Executar

```sh
mvn tomcat7:run
```

## Criação do banco de dados

```sql
create table PRODUTO (
  CODIGO INTEGER,
  NOME   VARCHAR(100),
  PRECO  DECIMAL(5,2)
);
```

## Preparação do projeto

Instalação do Maven Wrapper. Para possibilitar executar o projeto mesmo que o Maven não esteja instalado e configurado.

```sh`
mvn -N io.takari:maven:0.7.6:wrapper -Dmaven=3.6.1
```
