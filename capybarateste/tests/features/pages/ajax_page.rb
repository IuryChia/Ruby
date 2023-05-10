class AjaxPage < SitePrism::Page
  set_url "/buscaelementos/botoes"

  element :botao, "#teste"
  element :mensagem, "#div1"

  # criando metodo para clicar no botão

  def clica_botao
    # wait_for_botao, epera o botão aparecer
    botao.click
  end
end
