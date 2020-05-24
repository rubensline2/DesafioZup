## Automação end-to-end com Docker

``
Requisito mínimo:
``

````
ruby 2.5.0 >~ superior

Instalar:
  gem install cucumber
  gem install rspec
````


## Rodar em modo headless do chrome

1. No arquivo *cumcumber.yml* incluir navegadores e chamar constante no default do arquivo

````yml
---

default: -p pretty -p homolog -p html -p chrome_headless

pretty: --format pretty
homolog: AMBIENTE=homolog
html: --format html --out=reports/relatorio.html
chrome: BROWSER=chrome
chrome_headless: BROWSER=chrome_headless
````

## Para rodar os testes via terminal:
````
╰─➤Acessar a pasta via terminal 'DesafioZup'
╰─➤executar o comando no terminal: bundle install
╰─➤Executar o comando: cucumber

````
## Automação end-to-end com Docker

``
OBS: Configurar browser headless
``

````
Requisito mínimo:

ruby 2.5.0 >~ superior

Rodar no DOCKER:
````

1. Buildar imagem criada pelo arquivo *Dockerfile*

````ruby
╰─➤  docker build -t < nome imagem que deseja > .
````

2. Execute o test diretamente pelo Docker após buildar imagem

````ruby
╰─➤  docker run --rm < nome de sua imagem > bundle exec cucumber
````

```
Atenção como não temos interface gráfica dentro do Docker rodar sempre em modo Headless seus testes.
```
