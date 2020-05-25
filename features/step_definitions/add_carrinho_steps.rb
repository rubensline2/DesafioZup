Quando("pesquisar uma {string}") do |produto|
    @AddCarrinho.cmp_buscar.set produto
end
  
Quando("adicionar na sacola de compras") do
    @AddCarrinho.btn_buscar.click
    sleep 3
    @AddCarrinho.produto.first.click
    @AddCarrinho.selecionarVoltagem
    click_on('continuar')
end
  
Então("deve apresentar o produto na sacola") do
    expect(page).to have_content('Sacola')
end
