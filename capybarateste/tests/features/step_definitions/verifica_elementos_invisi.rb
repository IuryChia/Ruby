Quando("clico em um botão") do
  visit "/buscaelementos/botoes"
  find("#teste").click
end

Então("verifico se o texto desapareceu na tela com sucesso") do
  @verificar = find("#div1")
  expect(@verificar.text).to eql "Você Clicou no Botão!"
  find("#teste").click
  has_no_text?("Você Clicou no Botão!")
end
