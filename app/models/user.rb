class User < ActiveRecord::Base
  validates :userID, :presence => { :message => "Khong duoc trong"}, :uniqueness => { :message => "Du lieu vua nhap da co trong CSDL"}
  validates :birth_year, :numericality => { :message => "Hay nhap so vao" }

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      User.create! row.to_hash
    end
  end
end
