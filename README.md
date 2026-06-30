# ☕ Cardápio Café 💗

## 💕 Sobre o Projeto

Este projeto consiste em uma aplicação web de um cardápio digital para cafeteria, desenvolvida com o objetivo de conectar uma interface em HTML, CSS e JavaScript com um servidor criado em Node.js.

A aplicação permite que o usuário consulte os produtos cadastrados no banco de dados, podendo visualizar itens separados por categorias ou listar todos os produtos disponíveis.

O desenvolvimento foi realizado para aplicar os conteúdos estudados na disciplina de Desenvolvimento Web 1, envolvendo criação de APIs, integração com banco de dados e comunicação entre front-end e back-end.

---

## 💕 Tecnologias Utilizadas

- HTML5
- CSS3
- JavaScript
- Node.js
- Express.js
- PostgreSQL
- Biblioteca pg (integração com PostgreSQL)
- Cors (comunicação entre front-end e servidor)
- Dotenv (configuração de variáveis de ambiente)

---


---

# 💕 Banco de Dados

O banco de dados foi desenvolvido utilizando PostgreSQL e possui duas tabelas principais relacionadas:

## Categoria

Responsável por armazenar os tipos de produtos disponíveis no cardápio.

Campos:

- id_categoria
- nome_categoria

Exemplos de categorias:

- Salgados
- Doces
- Sanduíches
- Pizzas
- Massas
- Cafés
- Sucos
- Sobremesas
- Combos


## Item_cardapio

Armazena as informações dos produtos oferecidos.

Campos:

- id_item
- nome_item
- descricao
- preco
- id_categoria

A tabela Item_cardapio possui um relacionamento com a tabela Categoria através da chave estrangeira `id_categoria`, permitindo associar cada produto ao seu grupo correspondente.

Relacionamento:

Categoria (1) → (N) Item_cardapio

---

# 💕 Funcionamento da Aplicação

Ao iniciar o servidor Node.js, a aplicação disponibiliza uma API responsável por realizar a comunicação entre o site e o banco PostgreSQL.

O usuário acessa a página do cardápio e seleciona uma categoria através dos botões disponíveis.

O JavaScript realiza uma requisição utilizando `fetch()` para buscar os dados da API.

O servidor recebe essa solicitação, executa uma consulta no banco de dados e retorna os resultados em formato JSON.

Após receber os dados, o JavaScript organiza as informações e exibe os produtos na tela.

---

## 💕 Fluxo da Aplicação

1. Usuário acessa o cardápio.
2. Seleciona uma categoria.
3. O JavaScript envia uma requisição para a API.
4. O servidor recebe o pedido.
5. O Node.js consulta o PostgreSQL.
6. O banco retorna os produtos cadastrados.
7. Os dados são enviados em formato JSON.
8. Os produtos aparecem dinamicamente na página.

---

# ▶️ Como Executar o Projeto

## 1. Instalar as dependências

- npm install express
- npm install pg
- npm install dotenv
- etc...

---

## 2. Configurar o arquivo `.env`

Exemplo:
- DB_HOST=localhost
- DB_PORT=5432
- DB_NAME=trabalho-dw1-2bimestre
- DB_USER=postgres
- DB_PASSWORD=sua_senha
- PORT=3001

 
---

## 3. Criar o banco de dados

Execute o arquivo SQL responsável pela criação das tabelas e inserção dos produtos.

---

## 4. Iniciar o servidor
node node.js


Após iniciar, o servidor ficará disponível na porta configurada.

---

# ✨ Funcionalidades

- Visualização dos produtos cadastrados.
- Separação dos itens por categorias.
- Consulta de dados armazenados no PostgreSQL.
- Listagem completa do cardápio.
- Integração entre front-end, API e banco de dados.

---

# 💕 Autoria

Projeto desenvolvido para a disciplina de Desenvolvimento Web 1, com foco na prática de criação de aplicações web integradas com banco de dados pela aluna Louise Marques Lau.

