class Article < ApplicationRecord
   
    extend ActiveHash::Associations::ActiveRecordExtensions

    belongs_to_active_hash :category
      
    validates :category_id, presence: true 
    
    belongs_to :user
    has_many :favorites, dependent: :destroy
    has_many :comments

    with_options presence: true do
        validates :title
        validates :body

    
    end
end
