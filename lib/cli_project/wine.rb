class BestWine::Wine
  attr_accessor :name, :description

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end


end
