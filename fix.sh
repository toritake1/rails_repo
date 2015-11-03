#!/bin/sh

rake db:fixtures:load FIXTURES=a_idollists
rake db:fixtures:load FIXTURES=ka_idollists
rake db:fixtures:load FIXTURES=sa_idollists
rake db:fixtures:load FIXTURES=ta_idollists
rake db:fixtures:load FIXTURES=na_idollists
rake db:fixtures:load FIXTURES=ha_idollists
rake db:fixtures:load FIXTURES=ma_idollists
rake db:fixtures:load FIXTURES=ya_idollists
rake db:fixtures:load FIXTURES=ra_idollists
rake db:fixtures:load FIXTURES=wa_idollists

rake db:fixtures:load FIXTURES=a_dmm_mains
rake db:fixtures:load FIXTURES=ka_dmm_mains
rake db:fixtures:load FIXTURES=sa_dmm_mains
rake db:fixtures:load FIXTURES=ta_dmm_mains
rake db:fixtures:load FIXTURES=na_dmm_mains
rake db:fixtures:load FIXTURES=ha_dmm_mains
rake db:fixtures:load FIXTURES=ma_dmm_mains
rake db:fixtures:load FIXTURES=ya_dmm_mains
rake db:fixtures:load FIXTURES=ra_dmm_mains
rake db:fixtures:load FIXTURES=wa_dmm_mains

rake db:fixtures:load FIXTURES=a_dmm_details
rake db:fixtures:load FIXTURES=ka_dmm_details
rake db:fixtures:load FIXTURES=sa_dmm_details
rake db:fixtures:load FIXTURES=ta_dmm_details
rake db:fixtures:load FIXTURES=na_dmm_details
rake db:fixtures:load FIXTURES=ha_dmm_details
rake db:fixtures:load FIXTURES=ma_dmm_details
rake db:fixtures:load FIXTURES=ya_dmm_details
rake db:fixtures:load FIXTURES=ra_dmm_details
rake db:fixtures:load FIXTURES=wa_dmm_details

