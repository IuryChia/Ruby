Quando("eu digito no teclado") do
  visit("/users/new")
  find("#user_name").send_keys(:numpad5)
  find('input[value="Criar"]').send_keys(:enter)
end
