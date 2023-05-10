Quando("clico no alemento da sessao.") do
  @pagina = Pagina.new
  @pagina.load

  @pagina.navbar.medium.click
end
