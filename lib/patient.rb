class Patient
  @@all = []
  attr_accessor

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
