class Topic < ActiveRecord::Base
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
      year = String(row[0])
      month = String(row[1])
      day = String(row[2])
      startTime = String(row[3])
      endTime = String(row[4])
      people = String(row[5])
      theme = String(row[6])
      preparation = String(row[7])
      homework = String(row[8])
      self.create(:year => year, :month => month, :day => day, :startTime => startTime, :endTime => endTime, :people => people, :theme => theme, 
      :preparation => preparation, :homework => homework)
    end
  end
  
end
