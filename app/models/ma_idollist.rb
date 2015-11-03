class MaIdollist < ActiveRecord::Base
        has_one :ma_dmm_main, dependent: :destroy
        has_many :ma_dmm_details, dependent: :destroy
        has_many :ma_movies, dependent: :destroy
end
