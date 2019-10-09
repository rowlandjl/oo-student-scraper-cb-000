class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    student_hash.each do |attribute, value|
      self.send("#{attribute}=", value)
    end 
    @@all << self 
  end

  def self.create_from_collection(students_array)
    students_array.each {|student| Student.new(student)} 
  end

  def add_student_attributes(attributes_hash)
    attributes_hash.each {|attr, value| self.send()
  end

  def self.all
    @@all 
  end
end

