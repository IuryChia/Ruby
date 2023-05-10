Quando("mapeio uma tabela") do
  @lista = ListaElementosPage.new
  @lista.load

  #puts @lista.lista.size #pega toda a lista puts imprime na tela
  #puts @lista.lista[0].text #pega somente o item da lista descrito, neste caso o 0 zero
  #expect(@lista.lista.size).to eql 24

  @lista.lista.each do |listas|
    puts listas.text
  end
end
