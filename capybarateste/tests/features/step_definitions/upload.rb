Quando("eu faço um upload de arquivo") do
  visit "/outros/uploaddearquivos"
  #USAR DUAS BARRAS PARA BUSCAR UM ARQUIVO NO SISTEMA. CAPYBARA/RUBY NÃO ENTENDE CONTRA BARRA E BARRA SIMPLES
  attach_file("upload", "C:\\udemy\\capybarateste\\tests\\features\\gato.jpeg", make_visible: true)

  #Outro método porem no windows acontece bugs por conta das barras
  #@foto = File.join(Dir.pwd, "features\\gato.jpeg")
  #attach_file("upload", @foto, make_visible: true)

end
