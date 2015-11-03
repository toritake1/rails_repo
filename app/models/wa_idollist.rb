class WaIdollist < ActiveRecord::Base
        has_one :wa_dmm_main, dependent: :destroy
        has_many :wa_dmm_details, dependent: :destroy
        has_many :wa_movies, dependent: :destroy
end
