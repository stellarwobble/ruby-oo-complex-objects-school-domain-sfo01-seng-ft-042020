# code here!
class School
    attr_accessor :roster, :school, :student

    def initialize(school)
        @school = school
        @roster = Hash.new
       end 

       def add_student(name, grade)
        if @roster[grade] == nil
           @roster[grade] = []
        end 
        @roster[grade]<< name
       end 
       
       def grade(level) 
        @roster.select do |k,v|
            if k == level
                return v
            end 
        end 
    end 

    def sort
        nu_hash = Hash.new
        @roster.each do |x,y|
         nu_hash[x] = y.sort
        end 
        nu_hash
     end 

end 