class Story < ApplicationRecord
belongs_to :mytype
has_and_belongs_to_many :storypeople, :join_table => :storyhaspeople
def content=(uploaded_io)
if self.mytype.name == "video" or self.mytype.name == "photo"
File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
  file.write(uploaded_io.read)
end
write_attribute(:content, uploaded_io.original_filename)
else
write_attribute(:content, uploaded_io)
end
end
def content
read_attribute(:mypic)
end

end
