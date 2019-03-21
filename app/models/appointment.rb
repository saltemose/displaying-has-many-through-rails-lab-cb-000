class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date
    self.appointment_datetime.strftime("%B %-d, %Y")
  end

  def time
    self.appointment_datetime.strftime("%k:%M")
  end

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end


end
