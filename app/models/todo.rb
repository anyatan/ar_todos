require_relative '../../config/application'

class Todo < ActiveRecord::Base

end 

# def delete

# end

#implement your Student model here
# validates :email, uniqueness: true
# validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
# validate :validate_age, :validate_phone

 #    def name
	# "#{first_name} #{last_name}" 
 #    end

 #    def age
	# now = Date.today
 #    age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
 #    end

 #    def validate_phone
 #        phone_num = phone.gsub(/[^\d]/, '')
 #        if phone_num.length < 10
 #            errors.add(:phone, "invalid phone number.")
 #        end
 #    end

 #    def validate_age
 #        if age <= 5
 #        errors.add(:birthday, "age cannot less than 5.")
 #        end
#end
