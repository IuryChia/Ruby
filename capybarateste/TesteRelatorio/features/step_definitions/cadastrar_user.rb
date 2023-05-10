Quando("eu cadastro um usuario") do
  @home = UserPage.new
  @home.load
end

Então("eu verifico se o usuario foi cadastrado com sucesso") do
  expect(page).to have_current_path("http://localhost:3000//users/new"), url: true
end
