class YaIdollist < ActiveRecord::Base
        has_one :ya_dmm_main, dependent: :destroy
        has_many :ya_dmm_details, dependent: :destroy
        has_many :ya_movies, dependent: :destroy
end
