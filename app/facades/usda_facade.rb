class UsdaFacade 
  def self.foods_by_keyword(food)
    json = UsdaService.foods_by_keyword(food)
    
    json[:foods].map do |data|
      Food.new(data)
    end
  end
end