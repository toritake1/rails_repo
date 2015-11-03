class RaIdollist < ActiveRecord::Base
        has_one :ra_dmm_main, dependent: :destroy
        has_many :ra_dmm_details, dependent: :destroy
        has_many :ra_movies, dependent: :destroy
end
