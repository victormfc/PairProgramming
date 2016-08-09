

class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end


  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

  def array_printer(array)
  array.each do |language| 
  	   puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end
array_printer(array_of_languages)


aged_languages = array_of_languages.map do |lenguas|
	lenguas.age +=1
	lenguas
end


puts "The programming languages aged one year are: "

#array_printer(aged_languages)



sorted_array = array_of_languages.sort { |x,y| y.age <=> x.age }
	
array_printer(sorted_array)

#array_without_java = array_of_languages.delete_if {|i| i== java}

#array_printer(array_without_java)

shuffled_array = sorted_array.shuffle

array_printer(shuffled_array)










