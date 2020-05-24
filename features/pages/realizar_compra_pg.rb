class RealizarCompra < SitePrism::Page
    element :cmp_buscar, "#inpHeaderSearch"
    element :btn_buscar, '#btnHeaderSearch'
    elements :produto, :css, '.nm-product-img'
    element :resutadoPesquisa, '#nm-total-results-number'
    element :volts, '#variation-label'
    element :sacolaCompas, :css, '.table-warranty__description'
    element :btnContinuar, :css,'.warranty__btn--recommended'
    def selecionarVoltagem
        sleep 3
        if volts.visible?
            volts.select '110V'
            click_on 'Adicionar à sacola'

        elsif validaCarrinho.visible?
            click_on 'Adicionar à sacola'
        end
    end
end

