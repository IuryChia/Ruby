Quando("eu marco radiobox e checkbox") do
  visit "/buscaelementos/radioecheckbox"
  find('label[for="white"]').click
  check("purple", allow_label_click: true)
  uncheck("purple", allow_label_click: true)
  choose("red", allow_label_click: true)
  choose("Green", allow_label_click: true)
end
