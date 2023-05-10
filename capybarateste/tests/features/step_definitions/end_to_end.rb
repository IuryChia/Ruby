Quando("eu cadastro o usuario.") do
  visit "/users/new"
  fill_in(id: "user_name", with: "Iury")
  find("#user_lastname").set("Chiapetti")
  fill_in(id: "user_email", with: "Iury@gmail.com")
  find('input[value="Criar"]').click
end

Entao("verifico se o usuário foi cadastrado.") do
  texto = find("#notice")
  expect(texto.text).to eql "Usuário Criado com sucesso"
end

Quando("edito o usuario.") do
  sleep 5
  find(".btn.waves-light.blue").click
end
