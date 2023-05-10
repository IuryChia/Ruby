module Helper
  def tirar_foto(nome_arquivo, resultado)
    caminho_arquivo = "results/screenshots/test_#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
    attach(foto, "image/png")
  end
end

# metodo passado no curso para capturar imagem era EMBED mas deixou de ser usado
# usei o metodo attach mas somente recebe dois parametros neste caso (foto, image/png)
