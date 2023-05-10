Quando("eu faço cadastro") do
  visit "/users/new"
  #fill_in localiza o campo mapeado informado e preenche com o valor fornecido.
  fill_in(id: "user_name", with: "Iury")
  #find().set() busca o campo mapeado e preenche
  find("#user_lastname").set("Chiapetti")
  #find().set() busca o campo mapeado e preenche
  find("#user_email").send_keys("iuryteste@hotmail.com")
  find("#user_address").send_keys("Rua fulano")
  fill_in(id: "user_university", with: "UniversidadeX")
  find("#user_profile").set("Quality Assurance")
  find("#user_gender").set("M")
  fill_in(id: "user_age", with: "29")
  #find('imput[value="Criar"]').click
  click_on("Criar")
end

Entao("verifico se foi cadastrado") do
  texto = find("#notice")
  expect(texto.text).to eql "Usuário Criado com sucesso"
end
