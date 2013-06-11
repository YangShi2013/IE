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

def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    product = find_by_id(row["id"]) || new
    product.attributes = row.to_hash.slice(*accessible_attributes)
    product.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Csv.new(file.path, nil, :ignore)
  when ".xls" then Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end