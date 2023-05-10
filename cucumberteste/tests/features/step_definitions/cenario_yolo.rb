Dado("que tenho {int}") do |valor10|
  @div1 = valor10
end

Quando("divido por {int}") do |valor11|
  @divido2 = valor11
  @resdiv = @div1 / @divido2
end

Então("eu tenho a divisão") do
  expect(@resdiv).to eql 10
  puts @resdiv
end
