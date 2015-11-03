class KaIdollist < ActiveRecord::Base
        has_one :ka_dmm_main, dependent: :destroy
        has_many :ka_dmm_details, dependent: :destroy
        has_many :ka_movies, dependent: :destroy
end
