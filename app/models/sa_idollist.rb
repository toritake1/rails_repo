class SaIdollist < ActiveRecord::Base
        has_one :sa_dmm_main, dependent: :destroy
        has_many :sa_dmm_details, dependent: :destroy
        has_many :sa_movies, dependent: :destroy
end
