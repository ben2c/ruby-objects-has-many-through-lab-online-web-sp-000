class Doctor
  @@all = []
  attr_accessor :name

  def initialize (name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment (date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    self.all.select do |app|
      app.name == self
    end
  end

end
