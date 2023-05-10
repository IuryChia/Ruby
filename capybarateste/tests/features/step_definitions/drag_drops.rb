Dado("que eu estou usando DragDrop") do
  visit "/iteracoes/draganddrop"
end

Quando("movo o DragDrop") do
  @elemento = find("#winston")
  @elemento2 = find("#dropzone")
  @elemento.drag_to(@elemento2)
end
