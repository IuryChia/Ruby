class User < SitePrism::Page
  set_url = "users/new"
  element :nome, "#user_name"
  element :sobrenome, "#user_lastname"
  element :email, "#user_email"
  element :endereco, "#user_address"
  element :universidade, "#user_university"
  element :profissao, "#user_profile"
  element :genero, "#user_gender"
  element :idade, "#user_age"
  element :criar, 'input[value="Criar"]'

  def preencher_usuario
    nome.set "Iury"
    sobrenome.set "Chiapetti"
    email.set "iury@hotmail.com"
    endereco.set "Rua Teste"
    universidade.set "Unopar"
    profissao.set "Analista de sistemas"
    genero.set "Masculino"
    idade.set "29"
    criar.click
  end
end
