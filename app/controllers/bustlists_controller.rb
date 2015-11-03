class BustlistsController < ApplicationController
  # GET /idollists
  # GET /idollists.json
  def index
    @a_79lists = AIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @a_85lists = AIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @a_90lists = AIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @a_91lists = AIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @ka_79lists = KaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @ka_85lists = KaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @ka_90lists = KaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @ka_91lists = KaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @sa_79lists = SaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @sa_85lists = SaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @sa_90lists = SaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @sa_91lists = SaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @ta_79lists = TaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @ta_85lists = TaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @ta_90lists = TaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @ta_91lists = TaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @na_79lists = NaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @na_85lists = NaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @na_90lists = NaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @na_91lists = NaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @ha_79lists = HaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @ha_85lists = HaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @ha_90lists = HaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @ha_91lists = HaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @ma_79lists = MaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @ma_85lists = MaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @ma_90lists = MaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @ma_91lists = MaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @ya_79lists = YaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @ya_85lists = YaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @ya_90lists = YaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @ya_91lists = YaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @ra_79lists = RaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @ra_85lists = RaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @ra_90lists = RaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @ra_91lists = RaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)

    @wa_79lists = WaIdollist.where("bust < '80'").order(:family_name_kana, :given_name_kana)
    @wa_85lists = WaIdollist.where(bust: 80..85).order(:family_name_kana, :given_name_kana)
    @wa_90lists = WaIdollist.where(bust: 86..90).order(:family_name_kana, :given_name_kana)
    @wa_91lists = WaIdollist.where("bust > '90'").order(:family_name_kana, :given_name_kana)
  end
end
