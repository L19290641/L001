#Programa que cuentas las palabras repetidas dentro de una frase
class ContadorDePalabras
    def initialize(frase)
      @frase = frase
    end
  
    # Método para actualizar la frase
    def actualizar_frase(nueva_frase)
      @frase = nueva_frase
    end
  
    # Método para contar palabras repetidas
    def contar_palabras_repetidas
      conteo_palabras = Hash.new(0)
  
      
      palabras = @frase.downcase.split
  
      
      palabras.each do |palabra|
        conteo_palabras[palabra] += 1
      end
  
      
      conteo_palabras.each do |palabra, cantidad|
        puts "#{palabra.capitalize}: #{cantidad}" if cantidad > 1
      end
    end

  # Método to_s para mostrar el nombre del objeto
  def to_s
    "Objeto de la clase contadorDeFrecuencia"
  end

  end
  
  # Frase inicial
  frase_inicial = "Tengo una casa junto a otra casa, las cuales tienen un carro verde y un carro rojo."
  
  
  contador = ContadorDePalabras.new(frase_inicial)
  
  # Método para contar palabras repetidas en la frase inicial
  puts "Palabras repetidas en la frase inicial:"
  contador.contar_palabras_repetidas
  
  # Frase actualizada
  nueva_frase = "La luna se convertira en una luna llena el dia de mañana."
  contador.actualizar_frase(nueva_frase)
  
  # Método para contar palabras repetidas en la nueva frase
  puts "\nPalabras repetidas en la nueva frase:"

  contador.contar_palabras_repetidas
  
  puts contador