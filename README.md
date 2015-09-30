## Locateca  - Gerenciamento de Biblioteca

> **Nota:**

> - Locateca é um sistema de gerenciamento de biblioteca totalmente desenvolvimento em ruby.

----
##  Instalação

faça o clone do repositório atual para sua máquina da seguinte forma.

    cd ~
    mkdir -p biblioteca
    cd biblioteca
    git clone https://github.com/mateusmpa/biblioteca.git

##  Instale todas as dependencias necessárias:

    cd biblioteca
    bundle install

##  Recarregue os arquivos das base de dados:

    rake db:reset
    rake db:settings
    rake db:history


## Inicie a aplicação

    rails server
