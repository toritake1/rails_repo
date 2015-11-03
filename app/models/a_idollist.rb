class AIdollist < ActiveRecord::Base
        has_one :a_dmm_main, dependent: :destroy
        has_many :a_dmm_details, dependent: :destroy
	has_many :a_movies, dependent: :destroy
end
