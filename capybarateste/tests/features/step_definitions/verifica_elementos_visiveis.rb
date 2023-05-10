Quando("clico no botao") do
  visit "/buscaelementos/botoes"
  find("#teste").click
end

Então("verifico se o texto apareceu na tela com sucesso") do
  page.has_text?("Você Clicou no Botão!")
  have_text("Você Clicou no Botão!")

  #outro modo para verificação de tela

  #  @verificar = find("#div1")
  #  expect(@verificar.text).to eql "Você Clicou no Botão!"
  #medium automação com batista exite mais sobre a documentação
end
