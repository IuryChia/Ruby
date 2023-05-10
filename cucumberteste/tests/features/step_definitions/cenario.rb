Dado("eu tenha {int} laranjas.") do |valor1|
  @laranjas = valor1
end

Quando("eu como {int} laranjas.") do |valor2|
  @comer = valor2
  @resultado = @laranjas - @comer
end

Então("eu vejo quantas laranjas sobraram.") do
  expect(@resultado).to eql 8
  puts @resultado
end

########################--------------------------#################################
###################################################################################
########################--------------------------#################################

Quando("eu compro {int} laranjas.") do |valor3|
  @compro = valor3
  @compratotal = @laranjas + @compro
end

Então("eu vejo quantas laranjas eu tenho.") do
  expect(@compratotal).to eql 15
  puts @compratotal
end
