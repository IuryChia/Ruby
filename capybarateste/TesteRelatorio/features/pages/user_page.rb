class UserPage < SitePrism::Page
  set_url "/user/new"
  element :nome_usuario, "#username"
  element :ultimo_nome, "#user_lastname"
  element :email, "#user_email"
  element :endereco, "#user_address"
  element :universidade, "#user_university"
  element :profissao, "#user_profile"
  element :genero, "#user_gender"
  element :idade, "#user_age"
  element :criar, 'imput[value="Criar"]'
  element :mensagem, "#notice"

  def criar_usuario(user)
    nome_usuario.set user.user.name
    ultimo_nome.set user.user.lastname
    email.set user.email
    endereco.set user.endereco
    universidade.set user.universidade
    profissao.set user.profissao
    genero.set "Masculino"
    idade.set "28"
    criar.click
  end
end
