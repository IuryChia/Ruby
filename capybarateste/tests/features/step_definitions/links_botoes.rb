Quando("clico no link ou botoes") do
  #entra na página configurada no env.rb
  visit "/"
  click_on("Começar Automação Web")  #click_link_or_button são identicos
  #entra na página secundária abaixo
  visit "/buscaelementos/botoes"
  #clica no botão com a class definida
  click_button(class: "btn waves-light")
  #clica no onclick definido
  find('a[onclick="ativaedesativa2()"]').click
  #clica no onclick definido
  find('a[onclick="ativaedesativa2()"]').double_click
  #clica no onclick definido
  find('a[onclick="ativaedesativa3()"]').right_click
  visit "/"
  click_link("Github")
end
