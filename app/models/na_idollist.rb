class NaIdollist < ActiveRecord::Base
        has_one :na_dmm_main, dependent: :destroy
        has_many :na_dmm_details, dependent: :destroy
        has_many :na_movies, dependent: :destroy
end
