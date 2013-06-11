class User < ActiveRecord::Base
  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attributes.values_at(*column_names)
      end
    end
  end


  def self.import_data(csv)    
    CSV.parse(csv) do |row|
      name = String(row[0])
      password = String(row[1])
      birth = String(row[2])
      #estimatedPrice = self.regression_model(bedrooms, minutes)
      cellNum = String(row[3])
      homeNum = String(row[4])
      club = String(row[5])
      email = String(row[6])
      address = String(row[7])
      from = String(row[8])
      qq = String(row[9])
      msn = String(row[10])
      location = String(row[11])
      condition = String(row[12])
      self.create(:name => name, :password => password, :birth => birth, :cellNum => cellNum, :homeNum => homeNum, :club => club, :email => email, 
      :address => address, :from => from, :qq => qq, :MSN => msn, :location => location, :condition => condition)
    end
  end
end