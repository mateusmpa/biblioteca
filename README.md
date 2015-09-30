## Locateca  - Gerenciamento de Biblioteca

> **Nota:**

> - Locateca é um sistema de gerenciamento de biblioteca totalmente desenvolvimento em ruby.

O Sistema de Gerenciamento de Biblioteca deve:

- Cadastrar Livros;
- Adicionar resenha de Livros;
- Adicionar comentários;
- Realizar Empréstimos e Devoluções;
- Gerar relatórios de livros emprestados, livros mais ou menos emprestados, total de livros emprestados este mês, etc;
- Enviar email de notificação de data de empréstimo e dia de entrega.

----
###  Instalação

faça o clone do repositório atual para sua máquina da seguinte forma.

    cd ~
    mkdir -p biblioteca
    cd biblioteca
    git clone https://github.com/mateusmpa/biblioteca.git

###  Instale todas as dependencias necessárias:
```ruby
    cd biblioteca
    bundle install
```

###  Recarregue os arquivos das base de dados:
```ruby
    rake db:setup
    rake db:migrate
```

### Inicie a aplicação
```ruby
    rails server
```

### Home Page

[locateca.jelasticlw.com.br](locateca.jelasticlw.com.br)
