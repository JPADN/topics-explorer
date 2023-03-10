<div align="center">
  <img alt="topics explorer logo" src="./logo-topics-explorer.png">
</div>


# Topics Explorer

## O que é isso?

Topics Explorer é uma aplicação em que usuários podem criar tópicos de discussão, fazer postagens relativas à tópicos, publicar comentários em postagens, entre outras funcionalidades.

Trata-se de um projeto que desenvolvi com o intuito de demonstrar minhas capacidades em trabalhar com Desenvolvimento Web. Minha área de interesse é backend, portanto desenvolvi um frontend simples, com o intuíto apenas de servir como interface para a API do backend, tornando o projeto mais apresentável e facilitando sua compreensão.

## Descrição:

O projeto é dividido em 3 serviços/entidades: frontend, backend, banco de dados.
Estes serviços são executados dentro de *Docker Containers*, sendo estes configurados pelo *Docker Compose*.

### Frontend

O frontend foi desenvolvido em React.

### Backend

Foi desenvolvido um backend com uma *REST API* em Java, utilizando o framework Spring Boot. Para o banco de dados, foi utilizado o PostgreSQL. 

## Execução

**Requisitos:** para executar o projeto você precisa ter instalado em sua máquina os seguintes programas: Docker e Docker Compose.

Para compilar as imagens Docker e subir os contâineres em um SO Linux com bash, execute o script `build_run_dev.sh` a partir do mesmo diretório deste:
```
./build_run_dev.sh
```

Após a compilação das imagens e inicialização dos contâineres, acesse a aplicação em seu navegador no endereço `http://localhost:3000`

Neste ambiente de execução da aplicação, será utilizado um servidor de email de desenvolvimento. Este servidor de email é acessível pelo navegador no endereço `http://localhost:1080/`, onde será possível acessar os emails de confirmação de conta enviados no processo de cadastro de usuário.