class Publicacion < ActiveRecord::Base
  has_attached_file :foto, :styles =>{:mini=>"80x80#",:medio=>"200x200#"}
  validates_presence_of :titulo # valida la presencia de :nombre
end
