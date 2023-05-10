#Essa função puxa todos os arquivos com page no final somente usando a definição home como no arquivo mapeando elementos
#Lembrando que isso é adicionado no arquivo ENV como global >>>> require_relative "page_helper.rb" World(PageObjects)

#Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each { |file| require file }
Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each { |file| require file }

module PageObjects
  def home
    @home ||= MapeandoElementoPage.new
  end
end
