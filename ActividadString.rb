# Método que invierte una cadena y la convierte a mayúsculas
def reversa_y_mayuscula(str)
    str.reverse.upcase
  end
  
  # Método que cuenta el número de vocales en una cadena
  def contar_vocales(str)
    # Define un conjunto de vocales
    vocales = "aeiouAEIOU"
    # Cuenta las vocales en la cadena
    str.chars.count { |char| vocales.include?(char) }
  end
  
  # Método que verifica si una cadena es un palíndromo
  def es_palindromo(str)
    # Elimina espacios y convierte a minúsculas para comparar
    str = str.downcase.gsub(/\s+/, "")
    str == str.reverse
  end
  
  # Ejemplos de uso de los métodos
  
  cadena = "Hola Mundo"
  puts "Reversa y mayúscula: #{reversa_y_mayuscula(cadena)}" # OLM ADUNOM ALOH
  puts "Número de vocales: #{contar_vocales(cadena)}"        # 4
  puts "¿Es palíndromo? #{es_palindromo(cadena)}"            # false
  
  cadena_palindromo = "Anita lava la tina"
  puts "¿Es palíndromo? #{es_palindromo(cadena_palindromo)}" # true
  