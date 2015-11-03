class TaIdollist < ActiveRecord::Base
        has_one :ta_dmm_main, dependent: :destroy
        has_many :ta_dmm_details, dependent: :destroy
        has_many :ta_movies, dependent: :destroy
end
