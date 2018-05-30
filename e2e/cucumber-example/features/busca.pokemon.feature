#language: pt
Funcionalidade: Busca de pokémons

Contexto: Tela de pesquisa de pokemon
    Dado que eu estou na tela de listagem de pokémons


Cenário: Pesquisa de pelo nome do pokémon
    Quando eu digito "mew" no campo de pesquisa
    Então devo visualizar dois pokémons no resultado

Cenário: Pesquisa sem pokemon encontrado
    Quando eu digito "pikachu" no campo de pesquisa
    Então devo visualizar a lista vazia

# Esquema do Cenário: Pesquisa de pelo nome do pokémon
# Dado que eu estou na tela de listagem de pokémons
# Quando eu digito <pokemon> no campo de pesquisa
# Então devo visualizar <resultado> pokémons no resultado

# Exemplos:
# |pokemon |resultado|
# |mew     |Mew,Mewtwo|
# |pikachu | |
