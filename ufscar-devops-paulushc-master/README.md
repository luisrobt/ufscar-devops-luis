# UFSCar DevOps

Este repositorio foi utilizado durante o curso de DevOps e serve como um exemplo de utilização de algumas ferramentas e é dividido em 3 partes:

- Uma aplicação Java de Backend
- Uma aplicação node de Frontend
- Um Proxy utilizando NGINX

A ideia por traz deste repositorio é servir de base de exemplos e baseado em cada uma das tags geradas, é possivel acompanhar o desenrolar da aplicação.

No inicio vamos apenas construir nossas aplicações servindo conteudo estatico com o nome de cada aluno (versão 1.0). Depois vamos colocar esta aplicação pra rodar em um cluster do docker swarm que será compartilhado na sala toda. Após isto, vamos começar a trabalhar com o proxy redirecionando as chamadas para o servidor de frontent (versão 2.0).

## Aplicação Backend

A aplicação backend se encontra neste repositorio e pode ser baixada, porem o intuito é poder usa-la apenas para servir dados. Ela foi construida utilizando Spring-boot e usa um banco de dados mariadb que será carregado como parte das dependencias no nosso arquivo de orquestração. Esta aplicação irá prover algumas APIs que serão utilizadas pelo frontend para exibir os dados.

## Aplicação Frontend

O frontend é desenvolvido em react-js e consome as APIs que são expostas pela aplicação de backend. Ela é bem simples e faz uso de alguns mecanismos basicos de listagem, criação e adição de usuarios.

## Proxy

O proxy é constituido por um servidor NGINX que alem de fazer o proxy da aplicação web serve algumas páginas HTML básicas que usaremos para demonstração tambem.