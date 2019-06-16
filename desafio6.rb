module Test
    def result         
        promedio = (self.nota1+self.nota2)/2.to_f
        if promedio >= 4
            puts "Estudiante #{self.nombre} aprobado con promedio #{promedio}"
        else
            puts "Estudiante #{self.nombre} reprobado con promedio #{promedio}"
        end
    end
end

module Attendance    
    def student_quantity        
        return self.quantity
    end
end

class Student
    include Test
    extend Attendance
    @@quantity = 0
    attr_reader :nombre, :nota1, :nota2 
    def initialize(nombre, nota1=4, nota2=4)
        @nombre = nombre
        @nota1 = nota1
        @nota2 = nota2
        @@quantity += 1
        
    end
    def self.quantity
        @@quantity
    end
end

10.times do |p|
    puts Student.new('Juan', rand(1..7), rand(1..7)).result   
end

puts Student.quantity