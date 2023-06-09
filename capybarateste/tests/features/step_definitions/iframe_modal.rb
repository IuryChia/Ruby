Quando("entro no iframe e preencho os campos") do
  visit "/mudancadefoco/iframe"

  #mudando foco para iframe
  within_frame("id_do_iframe") do
    fill_in(id: "first_name", with: "Iury")
    fill_in(id: "last_name", with: "Chiapetti")
  end
end

Quando("entro no modal e verifico o texto") do
  visit "/mudancadefoco/modal"
  find('a[href="#modal1"]').click

  within("#modal1") do
    texto = find("h4")
    expect(texto.text).to eql "Modal Teste"
    find(".modal-close").click
  end
end
