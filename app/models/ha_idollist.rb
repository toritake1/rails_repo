class HaIdollist < ActiveRecord::Base
        has_one :ha_dmm_main, dependent: :destroy
        has_many :ha_dmm_details, dependent: :destroy
        has_many :ha_movies, dependent: :destroy
end
