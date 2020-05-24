Dado("que estou no site da Magazine Luiza") do
    visit '/'
end
  
Quando("informar no campo de busca {string}") do |produto|
    @Pesquisar.cmp_buscar.set produto
end
  
Quando("clicar no icone de busca") do
    @Pesquisar.btn_buscar.click
end
  
Quando("inserir no carrinho de compras") do
    @Pesquisar.produto.first.click
    @Pesquisar.selecionarVoltagem
    
end

Então("deve ser exibido o {string} buscado") do |produto|
    expect(page).to have_content(produto)
end
  
