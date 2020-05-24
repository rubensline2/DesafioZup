#language:pt

Funcionalidade: 
  Como cliente da loja de departamentos Magazine Luiza, 
  desejo realizar compras, bucar produtos, adicionar 
  ao carrinho e validar itens
  Contexto:
   Dado que estou no site da Magazine Luiza
   
   @pesquisar
 	Esquema do Cenário: Pesquisar produto
    Quando informar no campo de busca '<produto>'
    Então deve ser exibido o '<produto>' buscado
   Exemplos:
     | produto      | 
     |  maquina     | 
     |  ventilador  |
     | congelador   |

  @adicionarProduto
  Cenário: Adicionar produto para comprar
   Quando pesquisar uma 'cafeteira'
   E adicionar na sacola de compras
   Então deve apresentar o produto na sacola