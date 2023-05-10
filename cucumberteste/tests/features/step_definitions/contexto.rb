Dado("que eu tenho {int} laranjas na bolsa.") do |valor|
  @laranjas = valor
end

Quando("eu coloco {int} laranjas na bolsa.") do |valor2|
  @coloquei = valor2
  @resultado = @laranjas + @coloquei
end

Então("eu verifico se o total de laranjas na bolsa é {int}.") do |total|
  expect(@resultado).to eql total
end

Quando("eu tiro {int} laranjas da bolsa") do |valor3|
  @retirei = valor3
  @resultado = @laranjas - @retirei
end

Então("eu verifico com quantas laranjas eu fiquei na bolsa") do
  expect(@resultado).to eql 8
  puts @resultado
end

#contexto roda em todos os cenarios os steps somente busca o passado
#exemplo steps (chamando steps)
#steps %Q{
#
#  Dado eu tenho 10 laranjas no estoque
#
# }
