module RconceptHelper
  def formatted_concept(concept=nil)
   definition = concept["name"].gsub(/#{@query}\/\w\//, ' ').strip.capitalize  || ""
   concept["score"].present? ? "#{definition}. Score = #{concept["score"]}" : "#{definition}"
  end
end
