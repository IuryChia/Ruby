Quando("interajo com dropdown e select") do
  visit "/buscaelementos/dropdowneselect"
  #usando dropdown
  find(".btn.dropdown-button").click
  find(id: "dropdown3").click
  # usando o select
  select "Firefox", from: "dropdown"
  find('option[value="1"]').select_option
  sleep 2
end

Quando("preencho o autocomplete") do
  visit "/widgets/autocomplete"
  find("#autocomplete-input").set "Rio Grande do S"
  find("ul", text: "Rio Grande do Sul").click
end
