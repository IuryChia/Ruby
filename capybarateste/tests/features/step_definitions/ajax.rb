Quando("clico no botão") do
  @ajax = AjaxPage.new
  @ajax.load

  @ajax.clica_botao
end

#AJAX COM A FUNÇÃO WAIT FOI DESCONTINUADO.
#Então("verifico se apareceu") do
#  @ajax.wait_for_mensagem
#  expect(ajax.mensagem.text).to eql "Você Clicou no Botão!"
#end
