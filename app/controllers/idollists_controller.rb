class IdollistsController < ApplicationController
  # GET /idollists
  # GET /idollists.json
  def index
    @a_idollists = AIdollist.order(:family_name_kana, :given_name_kana)
    @ka_idollists = KaIdollist.order(:family_name_kana, :given_name_kana)
    @sa_idollists = SaIdollist.order(:family_name_kana, :given_name_kana)
    @ta_idollists = TaIdollist.order(:family_name_kana, :given_name_kana)
    @na_idollists = NaIdollist.order(:family_name_kana, :given_name_kana)
    @ha_idollists = HaIdollist.order(:family_name_kana, :given_name_kana)
    @ma_idollists = MaIdollist.order(:family_name_kana, :given_name_kana)
    @ya_idollists = YaIdollist.order(:family_name_kana, :given_name_kana)
    @ra_idollists = RaIdollist.order(:family_name_kana, :given_name_kana)
    @wa_idollists = WaIdollist.order(:family_name_kana, :given_name_kana)
  end

end
