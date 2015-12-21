require_relative 'models/todo'

class Main 

	def self.add(list)
	x = Todo.create(list_of_todos: list)
	p x
	end

	def self.delete(id)
	y =Todo.find_by(id: id).destroy
	p y 
	end

	def self.list
		Todo.all.each do |x|
		p "#{x.id}. #{x.list_of_todos} #{x.complete}"
		end
	end

	def self.completed(id)
	Todo.where(id: id).update_a3ll(complete: "Yes")
	end

end 

# Main.add('Clean car')
# Main.add('Shopping')
# Main.add('Car wash')
# p Main.completed('Wash')

input = ARGV

  case ARGV[0]
    when "list"
      Main.list
    when "add"
      Main.add(ARGV[1..-1].join(' '))
    when "delete"
      Main.delete(ARGV[1])
     when "complete"
      Main.completed(ARGV[1])
    else
      puts "invalid command"
  end


#ello = Main.new
#hello.add('Wash Laundry')
#hello.add('Wash Laundry')
#hello.add('Wash Laundry')
#hello.list



	# def senator_state(state)
	# meow = Person.select(:firstname, :lastname, :party, :name_suffix).where(title: 'Sen', state: state).order(:lastname)
	# 	meow.each do |x|
	# 	puts "#{x.lastname}, , #{x.firstname} (#{x.party})"
	# 	end
	# end

	# def sr_gender(gender)
	# total = Person.select(:gender, :title).where(title: 'Sen', in_office: 1, gender: gender).count(:gender)
	# count_percentage = total * 100/(Person.where(in_office: 1, title: 'Sen').count)

	# if gender == 'M'
	# 	a = 'Male'
	# 	else 
	# 	a = 'Female'
	# end
	# puts "#{a} Senators: #{total} (#{count_percentage}%)"
	# end

	# def rr_gender(gender)
	# total = Person.select(:gender, :title).where(title: 'Rep', in_office: 1, gender: gender).count(:gender)
	# count_percentage = total * 100/(Person.where(in_office: 1, title: 'Rep').count)

	# if gender == 'M'
	# 	a = 'Male'
	# 	else 
	# 	a = 'Female'
	# end
	# puts "#{a} Representative: #{total} (#{count_percentage}%)"
	# end

	# def sr_gender(state)
	# state = Person.group(:state).order("count_state desc").count("state")
 #    state.each do |k,v|
 #        b = Person.where("state = ?",k).group(:title).count(:title)
 #        puts b
 #        p "#{k} Senator = #{b["Sen"]} Rep = #{b["Rep"]}"
 #    	end
	# end
#Representative is the value, b is the key because when group and count go together, they become Hash.
	# def total(title)
	# title = Person.group(:title).count(:title)
	# p title
	# #x = Person.where("title = ?").group(
	# end
