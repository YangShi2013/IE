class Classtime < ActiveRecord::Base
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
      totalTime = String(row[2])
      takenTime = String(row[3])
      balance = String(row[4])
      vipbalance = String(row[5])
      takenVIPTime = String(row[6])
      lastClass = String(row[7])
      validDate = String(row[8])
      self.create(:name => name, :password => password, :totalTime => totalTime, :takenTime => takenTime, :balance => balance, :VIPbalance => vipbalance,
       :takenVIPTime => takenVIPTime, :lastClass => lastClass, :validDate => validDate)
    end
  end
  
  
end
