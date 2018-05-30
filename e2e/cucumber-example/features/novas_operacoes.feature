#language: pt
Funcionalidade: Cadastro de Novas Operações

Contexto: Tela de Investimentos
    Dado que eu estou na tela de Investimentos

Cenário: Cadastro de uma Nova Operação
    
    E possuo os seguintes dados:
    | agencia             | |
    | conta               | |
    | cnpj                | |
    | conta_selecionada   | |
    | cliente_selecionado | |
    | tipo_operacao       | |
    | codigo              | |
    | nome                | |
    | subconta            | |
    | data                | |
    | valor_operacao      | |
    | tipo_liquidacao     | |
    | ag_cc               | |
    | banco_liq           | |
    | c_c_liq             | |
    | cnpj_liq            | |
    
    Quando adiciono uma Nova Operação
    Então devo visualizar a operação no grid de Operações em Andamento

Cenário: Cadastrar sem preencher todos os campos obrigatórios
    E possuo os seguintes dados:
    | agencia             | |
    | conta               | |
    | cnpj                | |
    | conta_selecionada   | |
    | cliente_selecionado | |
    | tipo_operacao       | |
    | codigo              | |
    | nome                | |
    | subconta            | |
    | data                | |
    | valor_operacao      | |
    | tipo_liquidacao     | |
    | ag_cc               | |
    | banco_liq           | |
    | c_c_liq             | |
    | cnpj_liq            | |
    
    Quando tento adicionar uma Nova Operação
    Então devo visualizar o botão de Adicionar desabilitado 

Cenário: Salvar informações para operações futuras
    
    E possuo os seguintes dados:
    | agencia             | |
    | conta               | |
    | cnpj                | |
    | conta_selecionada   | |
    | cliente_selecionado | |
    | tipo_operacao       | |
    | codigo              | |
    | nome                | |
    | subconta            | |
    | data                | |
    | valor_operacao      | |
    | tipo_liquidacao     | |
    | ag_cc               | |
    | banco_liq           | |
    | c_c_liq             | |
    | cnpj_liq            | |
    
    Quando eu seleciono a opção "Salvar informações para operações futuras"
    E adiciono uma Nova Operação
    Então devo visualizar a operação salva em "Últimas Operações"

Cenário: Cadastro de uma Nova Operação através de Upload de Arquivo
    
    Quando faço um upload de arquivo
    Então devo visualizar os registros do arquivo no grid de Operações em Andamento