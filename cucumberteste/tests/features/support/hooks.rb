Before do
  puts "estou sendo executado antes de cada cenario"
  @soma = 5 + 5
end

After do
  puts "estou sendo executado depois de cada cenario"
end

Before "@comeco" do
  puts "Rodei na tag comeco"
end

After "@final" do
  puts "Rodei na tag final"
end
