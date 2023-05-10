Quando("eu entro na janela e verifico a mensagem") do
  visit "/mudancadefoco/janela"

  # variavel janela recebe uma janela que foi aberta pelo link
  @janela = window_opened_by do
    click_link "Clique aqui"
  end

  #muda de foco para a variavel
  #https://stackoverflow.com/questions/38857612/can-rspec-ignore-checking-port-number
  within_window @janela do
    expect(page).to have_current_path("http://localhost:3000/mudancadefoco/newwindow")
    @mensagem = find(".red-text.text-darken-1.center")
    expect(@mensagem.text).to eq "Você Abriu uma nova janela!!"
    @janela.close
  end
end

##########################         #######################
#######################    ALERTS   ######################
#########################         ########################

Quando("eu entro no alert e verifico faço a açao") do
  #botao 1
  visit "/mudancadefoco/alert"
  find('Button[onclick="jsAlert()"]').click
  page.accept_alert

  find('Button[onclick="jsConfirm()"]').click
  page.dismiss_confirm

  find('Button[onclick="jsPrompt()"]').click
  page.accept_prompt(with: "Iury Chiapetti")
  # page.dismiss_prompt   # Clica no cancelar
end
