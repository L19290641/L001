# Importar la gema
require 'faker'

# Arreglo para almacenar a todos los cantantes
cantantes = []

# Generador de 100 cantantes
100.times do
  nombre = Faker::Name.name     # Genera un nombre falso
  domicilio = Faker::Address.full_address  # Genera un domicilio falso
  correo = Faker::Internet.email(name: nombre) # Genera un correo electrónico basado en el nombre
  
  
  cantantes << { nombre: nombre, domicilio: domicilio, correo: correo }
end

# Imprimimos la lista de cantantes con sus datos
cantantes.each_with_index do |cantante, index|
  puts "Cantante #{index + 1}:"
  puts "Nombre: #{cantante[:nombre]}"
  puts "Domicilio: #{cantante[:domicilio]}"
  puts "Correo: #{cantante[:correo]}"
  puts "--------------------------"
end
