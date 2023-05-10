World(Page)

module Page
  def home
    @home ||= MapeandoElementoPage.new
  end
end
