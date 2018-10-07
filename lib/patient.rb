class Patient 
  attr_accessor :name, :appointments  
  @@all = [] 
  
  def initialize(name) 
    @name = name 
    @@all << self
    # @@all = []
    @appointments = []
  end
    
  def self.all 
      @@all 
  end 
   
    
  def new_appointment(doctor, date)
    Appointment.new(patient) 
  end 
    
    
  def appointments 
      Appointment.all.select { |appointment| appointment.patient == self} 
  end
    
    
  def doctors
      appointments.collect {|appointment|  appointment.doctor}
  end 

end 

