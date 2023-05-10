class Sessao < SitePrism::Section
  element :medium, 'a[href="https://medium.com/automa%C3%A7%C3%A3o-com-batista"]'
end

class Pagina < SitePrism::Page
  set_url "/buscaelementos/radioecheckbox"
  section :navbar, Sessao, ".nav-wrapper"
end
