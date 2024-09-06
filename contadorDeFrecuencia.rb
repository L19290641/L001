# Programa que cuentas las palabras repetidas en una frase preescrita. 
def palabras_repetidas(frase)
    # Inicializamos un hash vacío
    conteo_palabras = Hash.new(0)
  
    # Convertimos la frase a un arreglo de palabras
    palabras = frase.downcase.split
  
    # Iteramos sobre cada palabra
    palabras.each do |palabra|
      # Incrementamos el conteo de la palabra en el hash
      conteo_palabras[palabra] += 1
    end
  
    # Mostramos las palabras que se repiten
    conteo_palabras.each do |palabra, cantidad|
      puts "#{palabra.capitalize}: #{cantidad}" if cantidad > 1
    end
  end
  
  # Frase de ejemplo
  frase = "Espero que la luna se convierta en luna llena hoy"
  
  # Llamada al método para contar palabras repetidas
  palabras_repetidas(frase)
  