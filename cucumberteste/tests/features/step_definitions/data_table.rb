Dado("que eu tenho umas laranjas") do |table|
  @fruta = table.rows_hash["laranjas"].to_i                     ###### TRANSFORMAR HEADER DO DATA_TABLE POR LINHAS (ROWS)######  to_i PARA TRANSFORMAR INTEIRO
  #@banana = table.rows_hash["bananas"].to_i                    ############     EXEMPLO DA SEGUNDA LINHA          ############
end

Quando("eu descasco {int} laranjas") do |valor1|
  @cortar = valor1
  @total = @fruta - @cortar
end

Então("eu verifico quantas laranjas sobraram inteiras.") do
  expect(@total).to eql 8
end

Dado("que tenho umas laranjas") do |table|
  table.hashes.each do |valor5|
    @fruta = valor5["laranjas"].to_i
  end
end

Quando("eu chupo {int} laranjas") do |valor2|
  @chupei = valor2
  @resultado = @fruta - @chupei
end

Então("eu verifico quantas laranjas sobraram.") do
  expect(@resultado).to eql 8
end
