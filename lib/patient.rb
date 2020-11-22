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

  def new_appointment(date, self, doctor)
    Appointment.new(date, self, doctor)
  end

end
