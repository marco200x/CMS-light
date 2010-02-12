class Usuario < ActiveRecord::Base
  # Solo para "validates_presence_of" se puede a�adir varios campos
  validates_presence_of :nombre, :login, :pass, :fecha_nacimiento, :tipo
  # Valida de que este campo sea �nico en toda la base de datos, osea que no exista otro igual en la tabla usuarios
  validates_uniqueness_of :login 
  #Valida confirmacion de pass
  validates_confirmation_of :pass
  
   # Atributo creado para poder crear login y password
  attr_accessor :pass_confirmation

  # Se define una constante con tipos de usuarios
  TIPOS = [["Usuario", "usuario"], ["Administrador", "admin"]]
  
  # Relaci�n de 1 a muchos
  has_many :compra_detalles

end
