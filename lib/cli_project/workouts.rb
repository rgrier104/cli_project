class Workout::Workouts


  def self.scrape_cp
    doc = Nokogiri::HTML(open("https://www.vivino.com/explore?e=eJzLLbI10TNVy83MszU0UMtNrLA1MVBLrrQtLVZLtg0NdlErsDVUS0-zLUssykwtScxRy022VctPAmLblNTiZLXykuhYoIpi29ISAHLqF_w="))
    binding.pry
  end

end
