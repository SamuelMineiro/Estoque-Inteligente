# Estoque Inteligente — Controle de Estoque para Adega

Sistema web desenvolvido para gerenciamento de estoque de uma adega, permitindo cadastrar, visualizar, editar e controlar produtos e suas quantidades.

O projeto foi desenvolvido durante a graduação em Ciência da Computação, utilizando Python e Django, com banco de dados SQLite e interface web.

## Funcionalidades

* **Visualização dos produtos:** exibe os produtos cadastrados e permite acessar as principais funcionalidades do sistema.
* **Cadastro de produtos:** permite cadastrar novos produtos com informações como nome, marca, quantidade e valor.
* **Edição de produtos:** permite atualizar os dados dos produtos cadastrados.
* **Visualização individual:** apresenta os dados detalhados de um produto e seu valor total em estoque.
* **Registro de vendas:** permite registrar a saída de produtos, realizando o controle das quantidades disponíveis.
* **Adição ao estoque:** permite atualizar as quantidades dos produtos em estoque.

## Tecnologias utilizadas

* **Python**
* **Django**
* **HTML**
* **CSS**
* **JavaScript**
* **Bootstrap**
* **SQLite**

## Como executar o projeto

### Pré-requisitos

* Python 3.11
* Git

### Instalação

Clone o repositório:

```bash
git clone https://github.com/SamuelMineiro/Estoque-Inteligente.git
```

Entre na pasta do projeto:

```bash
cd Estoque-Inteligente
```

Crie e ative um ambiente virtual:

```bash
python -m venv venv
```

No Windows:

```bash
venv\Scripts\activate
```

Instale as dependências:

```bash
pip install -r requirements.txt
```

Execute as migrações:

```bash
python manage.py migrate
```

Inicie o servidor:

```bash
python manage.py runserver
```

A aplicação estará disponível em:

`http://127.0.0.1:8000/`

## Colaboradores

* Guilherme Rodrigues
* João Fernandes
* Marcel Dantas
* [Railton Rocha](https://github.com/rocha-Railton)
* [Samuel Mineiro](https://github.com/SamuelMineiro)
