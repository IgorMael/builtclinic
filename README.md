# Builtclinic

Uma aplicação web para gerenciamento de consultas médicas

## Intruções

Primeiramente, é necessário clonar o repositório localmente:
```shell
git clone https://github.com/IgorMael/builtclinic.git
```
Acessar o diretório
```shell
cd builtclinic
```
Em seguida, existe duas formas de executar o sistema. Atráves do Docker, ou instalando localmente.

### DOCKER


Monta os containers
```shell
docker-compose build
```

Instalar os pacotes do yarn
```shell
docker-compose run web yarn install --check-files
```


Cria e prepara o banco de dados para a aplicação
```shell
docker-compose run web rails db:create db:migrate
```

Inicializa a aplicação
```shell
docker-compose up
```
A aplicação pode ser acessada pelo navegador na página [localhost:3000](http://localhost:3000)
Em sistemas Unix, pode ser necessário garantir permissão para alteração de arquivos. Você pode fazer isso com o comando
```shell
sudo chown -R $USER:$USER .
```

Caso seja necessário alterar as portas padrões da aplicação, é possível fazer isso no arquivo docker-compose.yml, raiz do projeto.

### Instalação local
* É necessário ter Mysql, yarn e Ruby 2.7 instalados como pré-requisito
```shell
bundle install
```

Instalar os pacotes Yarn
```
yarn install --check-files
```

Alterar o arquivo *database.yml* com o host, username e senha de seu banco de dados.
Cria e prepara o banco de dados para a aplicação
```shell
rails db:create db:migrate
```

Inicializa a aplicação
```shell
rails s
```
A aplicação pode ser acessada pelo navegador na página [localhost:3000](http://localhost:3000)

## Testes
O testes podem ser executados com o comando
```shell
rspec
```
