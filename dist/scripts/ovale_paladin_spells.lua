local __exports = LibStub:NewLibrary("ovale/scripts/ovale_paladin_spells", 10000)
if not __exports then return end
local __Scripts = LibStub:GetLibrary("ovale/Scripts")
local OvaleScripts = __Scripts.OvaleScripts
__exports.register = function()
    local name = "ovale_paladin_spells"
    local desc = "[7.0] Ovale: Paladin spells"
    local code = [[
# Items
Define(heathcliffs_immortality 137047)
Define(pillars_of_inmost_light 151812)

Define(liadrins_fury_unleashed_buff 208410)
Define(scarlet_inquisitors_expurgation_buff 248289)

ItemRequire(shifting_cosmic_sliver unusable 1=oncooldown,!guardian_of_ancient_kings,buff,!guardian_of_ancient_kings_buff)	
	
# Paladin spells and functions.

# Learned spells.
Define(aegis_of_light 204150)
	SpellInfo(aegis_of_light cd=180)
	SpellAddBuff(aegis_of_light aegis_of_light_buff=1)
Define(aegis_of_light_buff 204150)
	SpellInfo(aegis_of_light_buff duration=6)
Define(ardent_defender 31850)
	SpellInfo(ardent_defender cd=120 gcd=0 offgcd=1)
	SpellInfo(ardent_defender add_cd=-36 talent=unbreakable_spirit_talent)
	SpellAddBuff(ardent_defender ardent_defender_buff=1)
Define(ardent_defender_buff 31850)
	SpellInfo(ardent_defender_buff duration=8)
Define(aura_mastery 31821)
	SpellInfo(aura_mastery cd=180)
Define(avengers_reprieve_buff 185676)
	SpellInfo(avengers_reprieve_buff duration=10)
Define(avengers_shield 31935)
	SpellInfo(avengers_shield cd=15 cd_haste=melee travel_time=1)
	SpellAddBuff(avengers_shield avengers_valor_buff=1)
	SpellAddBuff(avengers_shield avengers_reprieve_buff=1 itemset=T18 itemcount=2 specialization=protection)
	SpellAddBuff(avengers_shield grand_crusader_buff=0 if_spell=grand_crusader)
	SpellAddBuff(avengers_shield faith_barricade_buff=1 itemset=T17 itemcount=2 specialization=protection)
Define(avengers_valor_buff 197561)
	SpellInfo(avengers_valor_buff duration=15)
Define(avenging_crusader 216331)
	SpellInfo(avenging_crusader cd=120)
Define(avenging_crusader_buff 216331)
	SpellInfo(avenging_crusader_buff duration=20)
	SpellAddBuff(avenging_crusader avenging_crusader_buff=1)
Define(avenging_wrath 31884)
	SpellInfo(avenging_wrath cd=120)
	SpellInfo(avenging_wrath replace=crusade talent=crusade_talent specialization=retribution)
	SpellInfo(avenging_wrath replace=avenging_crusader talent=avenging_crusader_talent specialization=holy)
	SpellAddBuff(avenging_wrath avenging_wrath_buff=1)
Define(avenging_wrath_buff 31884)
	SpellInfo(avenging_wrath_buff duration=20)
	SpellInfo(avenging_wrath_buff add_duration=5 talent=sanctified_wrath_talent specialization=holy)
Define(bastion_of_light 204035)
	SpellInfo(bastion_of_light cd=120 gcd=0 offgcd=1)
Define(bastion_of_power_buff 144569)
	SpellInfo(bastion_of_power_buff duration=20)
Define(beacon_of_faith 53563)
	SpellInfo(beacon_of_faith gcd=1)
	SpellAddTargetBuff(beacon_of_faith beacon_of_faith_buff=1)
Define(beacon_of_faith_buff 53563)
Define(beacon_of_light 53563)
	SpellInfo(beacon_of_light cd=3)
	SpellAddTargetBuff(beacon_of_light beacon_of_light_buff=1)
Define(beacon_of_light_buff 53563)
Define(beacon_of_virtue 200025)
	SpellInfo(beacon_of_virtue cd=15)
Define(bestow_faith 223306)
	SpellInfo(bestow_faith cd=12)
Define(blade_of_justice 184575)
	SpellInfo(blade_of_justice holypower=-2 cd=11 cd_haste=melee)
	SpellInfo(blade_of_justice add_holypower=-1 itemset=T20 itemcount=4)
	SpellRequire(blade_of_justice cd 0=buff,blade_of_wrath_buff)
	SpellAddBuff(blade_of_justice blade_of_wrath_buff=0)
Define(blade_of_wrath_buff 281178)
	SpellInfo(blade_of_wrath_buff duration=10)
Define(blazing_contempt_buff 166831)
	SpellInfo(blazing_contempt_buff duration=20)
Define(blessed_hammer 204019)
	SpellInfo(blessed_hammer cd=4.5 cd_haste=melee max_charges=3)
Define(blessed_hammer_debuff 204301)
	SpellInfo(blessed_hammer_debuff duration=10)
Define(blessing_of_freedom 1044)
	SpellInfo(blessing_of_freedom cd=25)
	SpellAddBuff(blessing_of_freedom blessing_of_freedom_buff=1)
Define(blessing_of_freedom_buff 1044)
	SpellInfo(blessing_of_freedom_buff duration=8)
Define(blessing_of_protection 1022)
	SpellInfo(blessing_of_protection cd=300)
	SpellRequire(blessing_of_protection unusable 1=debuff,forbearance_debuff)
Define(blessing_of_protection_buff 1022)
	SpellInfo(blessing_of_protection_buff duration=10)
Define(blessing_of_sacrifice 6940)
	SpellInfo(blessing_of_sacrifice cd=120)
Define(blessing_of_spellwarding 204018)
	SpellInfo(blessing_of_spellwarding cd=180)
	SpellRequire(blessing_of_spellwarding unusable 1=debuff,forbearance_debuff)
Define(blessing_of_spellwarding_buff 204018)
	SpellInfo(blessing_of_spellwarding_buff duration=10)
Define(blinding_light 115750)
	SpellInfo(blinding_light cd=90 interrupt=1 tag=cd)
Define(cleanse 4987)
	SpellInfo(cleanse cd=8)
Define(cleense_toxins 213644)
	SpellInfo(cleense_toxins cd=8)
Define(consecration 26573)
	SpellInfo(consecration cd=4.5 tag=main cd_haste=melee specialization=protection)
	SpellInfo(consecration cd=4.5 tag=main cd_haste=spell specialization=holy)
Define(consecration_retribution 205228)
	SpellInfo(consecration cd=20 holypower=-1 talent=consecration_talent)
Define(consecration_buff 188370)
Define(consecration_debuff 204242)
	SpellInfo(consecration_debuff duration=12 tick=1 haste=melee)
Define(crusade 231895)
	SpellInfo(crusade cd=120)
	SpellAddBuff(crusade crusade_buff=1)
Define(crusade_buff 231895)
	SpellInfo(crusade_buff duration=30 max_stacks=15)
Define(crusader_strike 35395)
	SpellInfo(crusader_strike cd=6 max_charges=2)
	SpellInfo(crusader_strike cd_haste=melee specialization=retribution)
	SpellInfo(crusader_strike cd_haste=spell specialization=holy)
	SpellInfo(crusader_strike cd=5.1 talent=fires_of_justice_talent specialization=retribution)
	SpellInfo(crusader_strike unusable=1 talent=zeal_talent specialization=retribution)
	SpellRequire(crusader_strike cd 4.2=buff,avenging_crusader_buff talent=avenging_crusader_talent)
Define(crusaders_fury_buff 165442)
	SpellInfo(crusaders_fury_buff duration=10)
Define(defender_of_the_light_buff 167742)
	SpellInfo(defender_of_the_light_buff duration=8)
Define(divine_crusader_buff 144595)
	SpellInfo(divine_crusader_buff duration=12)
Define(divine_judgment_buff 271851)
	SpellInfo(divine_judgment_buff duration=15 max_stacks=15)
Define(divine_protection 498)
	SpellInfo(divine_protection cd=60 gcd=0 offgcd=1 tag=cd)
	SpellInfo(divine_protection add_cd=-18 talent=unbreakable_spirit_talent_holy)
	SpellInfo(divine_protection replace=ardent_defender level=50)
	SpellAddBuff(divine_protection divine_protection_buff=1)
Define(divine_protection_buff 498)
	SpellInfo(divine_protection_buff duration=8)
Define(divine_purpose 223817)
Define(divine_purpose_buff 223819)
	SpellInfo(divine_purpose_buff duration=12)
Define(divine_purpose_buff_holy 216411)
	SpellInfo(divine_purpose_buff_holy duration=10)
Define(divine_shield 642)
	SpellInfo(divine_shield cd=300)
	SpellInfo(divine_shield add_cd=-90 talent=unbreakable_spirit_talent specialization=!holy)
	SpellInfo(divine_shield add_cd=-90 talent=unbreakable_spirit_talent_holy specialization=holy)
	SpellAddBuff(divine_shield divine_shield_buff=1)
	SpellRequire(divine_shield unusable 1=debuff,forbearance_debuff)
Define(divine_shield_buff 642)
	SpellInfo(divine_shield_buff duration=8)
Define(divine_steed 190784)
	SpellInfo(divine_steed cd=45 tag=cd)
	SpellInfo(divine_steed max_charges=2 talent=cavalier_talent specialization=!holy)
	SpellInfo(divine_steed max_charges=2 talent=cavalier_talent_holy specialization=holy)
	SpellAddBuff(divine_steed divine_steed_buff=1)
Define(divine_steed_buff 221886)
	SpellInfo(divine_steed_buff duration=3)
Define(divine_storm 53385)
	SpellInfo(divine_storm holypower=3)
	SpellRequire(divine_storm holypower_percent 0=buff,divine_storm_no_holy_buff)
	SpellRequire(divine_storm add_holypower -1=buff,the_fires_of_justice_buff)
	SpellAddBuff(divine_storm divine_crusader_buff=0)
	SpellAddBuff(divine_storm divine_purpose_buff=0 if_spell=divine_purpose)
	SpellAddBuff(divine_storm final_verdict_buff=0 if_spell=final_verdict)
	SpellAddBuff(divine_storm divine_judgment_buff=1 talent=divine_judgment_talent)
SpellList(divine_storm_no_holy_buff divine_crusader_buff divine_purpose_buff)
Define(execution_sentence 267798)
	SpellInfo(execution_sentence cd=30 holypower=3)
	SpellRequire(execution_sentence add_holypower -1=buff,the_fires_of_justice_buff)
	SpellAddBuff(execution_sentence selfless_healer_buff=1 talent=selfless_healer_talent)
	SpellAddTargetDebuff(execution_sentence execution_sentence_debuff=1)
	SpellAddBuff(execution_sentence divine_judgment_buff=1 talent=divine_judgment_talent)
Define(execution_sentence_debuff 267798)
	SpellInfo(execution_sentence_debuff duration=7)
Define(eye_for_an_eye 205191)
	SpellInfo(eye_for_an_eye cd=60)
Define(eye_for_an_eye_buff 205191)
	SpellInfo(eye_for_an_eye duration=10)
Define(eye_of_tyr 209202)
	SpellInfo(eye_of_tyr cd=60 tag=cd)
	SpellInfo(eye_of_tyr cd=45 if_equipped=pillars_of_inmost_light)
	SpellAddTargetDebuff(eye_of_tyr eye_of_tyr_debuff=1)
Define(eye_of_tyr_debuff 209202)
	SpellInfo(eye_of_tyr_debuff duration=9)
Define(faith_barricade_buff 165447)
	SpellInfo(faith_barricade_buff duration=5)
Define(final_verdict 157048)
	SpellInfo(final_verdict holypower=3)
	SpellRequire(final_verdict holypower_percent 0=buff,divine_purpose_buff if_spell=divine_purpose)
	SpellAddBuff(final_verdict divine_purpose_buff=0 if_spell=divine_purpose)
	SpellAddBuff(final_verdict final_verdict_buff=1)
	SpellAddBuff(final_verdict divine_judgment_buff=1 talent=divine_judgment_talent)
Define(final_verdict_buff 157048)
	SpellInfo(final_verdict_buff duration=30)
Define(flash_of_light 19750)
	SpellAddBuff(flash_of_light infusion_of_light_buff=-1)
	SpellAddBuff(flash_of_light selfless_healer_buff=0)
Define(forbearance_debuff 25771)
	SpellInfo(forbearance_debuff duration=30)
Define(grand_crusader 85043)
Define(grand_crusader_buff 85416)
	SpellInfo(grand_crusader_buff duration=6)
Define(greater_blessing_of_kings 203538)
	SpellAddBuff(greater_blessing_of_kings greater_blessing_of_kings_buff=1)
	SpellRequire(greater_blessing_of_kings unusable 1=buff,greater_blessing_of_kings_buff)
Define(greater_blessing_of_kings_buff 203538)
Define(greater_blessing_of_wisdom 203539)
	SpellAddBuff(greater_blessing_of_wisdom greater_blessing_of_kings_buff=1)
	SpellRequire(greater_blessing_of_wisdom unusable 1=buff,greater_blessing_of_wisdom_buff)
Define(greater_blessing_of_wisdom_buff 203539)
Define(guardian_of_ancient_kings 86659)
	SpellInfo(guardian_of_ancient_kings cd=300 gcd=0 offgcd=1)
	SpellAddBuff(guardian_of_ancient_kings guardian_of_ancient_kings_buff=1)
Define(guardian_of_ancient_kings_buff 86659)
	SpellInfo(guardian_of_ancient_kings_buff duration=8)
Define(hammer_of_justice 853)
	SpellInfo(hammer_of_justice cd=60 interrupt=1)
Define(hammer_of_the_righteous 53595)
	SpellInfo(hammer_of_the_righteous max_charges=2 cd=4.5 cd_haste=melee)
	SpellInfo(hammer_of_the_righteous replace=blessed_hammer talent=blessed_hammer_talent)
Define(hammer_of_wrath 24275)
	SpellInfo(hammer_of_wrath holypower=-1 cd=7.5 unusable=1)
	SpellRequire(hammer_of_wrath unusable 0=target_health_pct,20)
	SpellRequire(hammer_of_wrath unusable 0=buff,hammer_of_wrath_usable_buff)
SpellList(hammer_of_wrath_usable_buff avenging_wrath crudsade)
Define(hand_of_freedom 1044)
	SpellInfo(hand_of_freedom cd=25)
Define(hand_of_hindrance 183218)
	SpellInfo(hand_of_hindrance cd=30)
	SpellAddTargetDebuff(hand_of_hindrance hand_of_hindrance_debuff=1)
Define(hand_of_hindrance_debuff 183218)
	SpellInfo(hand_of_hindrance_debuff duration=10)
Define(hand_of_protection 1022)
	SpellInfo(hand_of_protection cd=300 gcd=0 offgcd=1)
	SpellAddBuff(hand_of_protection hand_of_protection_buff=1)
Define(hand_of_protection_buff 1022)
	SpellInfo(hand_of_protection_buff duration=10)
Define(hand_of_reckoning 62124)
	SpellInfo(hand_of_reckoning cd=8)
Define(hand_of_sacrifice 6940)
	SpellInfo(hand_of_sacrifice cd=120 gcd=0 offgcd=1)
	SpellAddTargetBuff(hand_of_sacrifice hand_of_sacrifice_buff=1)
Define(hand_of_sacrifice_buff 6940)
	SpellInfo(hand_of_sacrifice_buff duration=10)
Define(hand_of_the_protector 213652)
	SpellInfo(hand_of_the_protector cd=15 cd_haste=melee tag=shortcd)
	SpellInfo(hand_of_the_protector charges=2 if_equipped=saruans_resolve)
Define(harsh_word 136494)
	SpellInfo(harsh_word tag=shortcd)
Define(holy_avenger 105809)
	SpellInfo(holy_avenger cd=90)
	SpellAddBuff(holy_avenger holy_avenger_buff=1)
Define(holy_avenger_buff 105809)
	SpellInfo(holy_avenger_buff duration=20)
Define(holy_light 82326)
	SpellAddBuff(holy_light infusion_of_light_buff=-1)
Define(holy_prism 114165)
	SpellInfo(holy_prism cd=20)
Define(holy_shock 20473)
	SpellInfo(holy_shock cd=9 cd_haste=spell)
	SpellRequire(holy_shock cd 4.5=buff,avenging_wrath_buff talent=sanctified_wrath_talent)
	SpellRequire(holy_shock cd 0=buff,divine_purpose_buff_holy talent=divine_purpose_talent)
Define(holy_wrath 210220)
	SpellInfo(holy_wrath cd=180)
Define(improved_forbearance 157482)
Define(infusion_of_light_buff 54149)
	SpellInfo(infusion_of_light_buff duration=15)
Define(judgment 20271)
	SpellInfo(judgment cd=12 cd_haste=melee holypower=-1)
	SpellAddTargetDebuff(judgment judgment_ret_debuff=1)
	SpellAddTargetDebuff(judgment zeal_debuff=3)
Define(judgment_holy 275773)
	SpellInfo(judgment_holy cd=12 cd_haste=spell)
	SpellRequire(judgment_holy cd 8.4=buff,avenging_crusader_buff talent=avenging_crusader_talent)
	SpellAddTargetDebuff(judgment judgment_holy_debuff=1)
	SpellAddTargetDebuff(judgment judgement_of_light_debuff=25 if_spell=judgment_of_light)
Define(judgment_prot 275779)
	SpellInfo(judgment_prot cd=6 cd_haste=melee)
	SpellInfo(judgment_prot charges=2 talent=crusaders_judgment_talent)
	SpellAddTargetDebuff(judgment judgement_of_light_debuff=25 if_spell=judgment_of_light)
Define(judgment_holy_debuff 214222)
	SpellInfo(judgment_holy_debuff duration=6)
Define(judgment_of_light 183778)
Define(judgement_of_light_debuff 196941)
	SpellInfo(judgement_of_light_debuff duration=30)
Define(judgment_ret_debuff 197277)
	SpellInfo(judgment_ret_debuff duration=8)
Define(justicars_vengeance 215661)
	SpellInfo(justicars_vengeance holypower=5)
	SpellRequire(justicars_vengeance add_holypower -1=buff,the_fires_of_justice_buff)
	SpellRequire(justicars_vengeance holypower_percent 0=buff,divine_purpose_buff)
	SpellAddBuff(justicars_vengeance divine_judgment_buff=1 talent=divine_judgment_talent)
Define(lawful_words_buff 166780)
	SpellInfo(lawful_words_buff duration=10)
Define(lay_on_hands 633)
	SpellInfo(lay_on_hands cd=600)
	SpellInfo(lay_on_hands add_cd=-180 talent=unbreakable_spirit_talent specialization=!holy)
	SpellInfo(lay_on_hands add_cd=-180 talent=unbreakable_spirit_talent_holy specialization=holy)
	SpellRequire(lay_on_hands unusable 1=target_debuff,forbearance_debuff)
	SpellAddTargetDebuff(lay_on_hands forbearance_debuff=1)
Define(liadrins_righteousness_buff 156989)
	SpellInfo(liadrins_righteousness_buff duration=20)
Define(light_of_dawn 85222)
	SpellInfo(light_of_dawn cd=12 cd_haste=spell)
SpellList(light_of_dawn_no_holy_buff divine_purpose_buff lights_favor_buff)
Define(light_of_the_martyr 183998)
Define(light_of_the_protector 184092)
	SpellInfo(light_of_the_protector cd=15 cd_haste=melee tag=shortcd gcd=0 offgcd=1)
	SpellInfo(light_of_the_protector charges=2 if_equipped=saruans_resolve)
	SpellInfo(light_of_the_protector replace=hand_of_the_protector talent=hand_of_the_protector_talent)
Define(lights_favor_buff 166781)
	SpellInfo(lights_favor_buff duration=10)
Define(lights_hammer 114158)
	SpellInfo(lights_hammer cd=60)
Define(maraads_truth_buff 156990)
	SpellInfo(maraads_truth_buff duration=20)
Define(rebuke 96231)
	SpellInfo(rebuke cd=15 gcd=0 interrupt=1 offgcd=1)
Define(redemption 7328)
Define(repentance 20066)
	SpellInfo(repentance cd=15)
Define(righteous_verdict 267610)
Define(righteous_verdict_buff 267611)
	SpellInfo(righteous_verdict_buff duration=6)
Define(rule_of_law 214202)
	SpellInfo(rule_of_law cd=30 max_charges=2)
Define(rule_of_law_buff 214202)
	SpellInfo(rule_of_law duration=10)
Define(sacred_shield 20925)
	SpellInfo(sacred_shield cd=6)
	SpellAddBuff(sacred_shield sacred_shield_buff=1)
Define(sacred_shield_buff 20925)
	SpellInfo(sacred_shield duration=30 haste=spell tick=6)
Define(saruans_resolve 144275)
Define(selfless_healer 85804)
Define(selfless_healer_buff 114250)
	SpellInfo(selfless_healer_buff duration=15 max_stacks=3)
Define(seraphim 152262)
	SpellInfo(seraphim cd=45)
Define(seraphim_buff 152262)
	SpellInfo(seraphim_buff duration=16)
Define(shield_of_the_righteous 53600)
	SpellInfo(shield_of_the_righteous cd=18 max_charges=3 cd_haste=melee gcd=0 offgcd=1)
	SpellAddBuff(shield_of_the_righteous shield_of_the_righteous_buff=1)
Define(shield_of_the_righteous_buff 132403)
	SpellInfo(shield_of_the_righteous_buff duration=4.5)
Define(shield_of_vengeance 184662)
	SpellInfo(shield_of_vengeance cd=120)
Define(speed_of_light 85499)
	SpellInfo(speed_of_light cd=45 gcd=0 offgcd=1)
Define(t18_class_trinket 124518)
Define(templars_verdict 85256)
	SpellInfo(templars_verdict holypower=3)
	SpellRequire(templars_verdict add_holypower -1=buff,the_fires_of_justice_buff talent=fires_of_justice_talent)
	SpellRequire(templars_verdict holypower_percent 0=buff,divine_purpose_buff if_spell=divine_purpose)
	SpellAddBuff(templars_verdict divine_purpose_buff=0 if_spell=divine_purpose)
	SpellAddBuff(templars_verdict righteous_verdict_buff=1 if_buff=!righteous_verdict_buff)
	SpellAddBuff(templars_verdict righteous_verdict_buff=0 if_buff=righteous_verdict_buff)
	SpellAddBuff(templars_verdict divine_judgment_buff=1 talent=divine_judgment_talent)
Define(the_fires_of_justice_buff 209785)
	SpellInfo(the_fires_of_justice_buff duration=15)
Define(tyrs_deliverance 200652)
	SpellInfo(tyrs_deliverance cd=90)
Define(uthers_insight_buff 156988)
	SpellInfo(uthers_insight_buff duration=21 haste=spell tick=3)
Define(wake_of_ashes 255937)
	SpellInfo(wake_of_ashes cd=45 holypower=-5 tag=main)
	SpellAddTargetDebuff(wake_of_ashes wake_of_ashes_debuff=1)
Define(wake_of_ashes_debuff 255937)
	SpellInfo(wake_of_ashes_debuff duration=5)
Define(whisper_of_the_nathrezim 137020)
Define(whisper_of_the_nathrezim_buff 207633)
Define(wings_of_liberty_buff 185647)
	SpellInfo(wings_of_liberty_buff duration=10 max_stacks=10)
Define(word_of_glory 85673)
	SpellInfo(word_of_glory cd=1 holypower=3)
	SpellRequire(word_of_glory holypower_percent 0=buff,word_of_glory_no_holy_buff)
	SpellAddBuff(word_of_glory bastion_of_glory_buff=0 if_spell=shield_of_the_righteous)
	SpellAddBuff(word_of_glory bastion_of_power_buff=0 if_spell=shield_of_the_righteous itemset=T16_tank itemcount=4)
	SpellAddBuff(word_of_glory divine_purpose_buff=0 if_spell=divine_purpose)
	SpellAddBuff(word_of_glory lawful_words_buff=0 itemset=T17 itemcount=4 specialization=holy)
SpellList(word_of_glory_no_holy_buff bastion_of_power_buff divine_purpose_buff lawful_words_buff)
Define(zeal 217020)
	SpellInfo(zeal cd=4.5 holypower=-1)
Define(zeal_debuff 269571)
	SpellInfo(zeal_debuff duration=25 max_stacks=9)

#Artifact traits
#Define(ashes_to_ashes 179546)

#Talents
Define(aegis_of_light_talent 18)
Define(aura_of_mercy_talent 12)
Define(aura_of_sacrifice_talent 11)
Define(avenging_crusader_talent 17)
Define(awakening_talent 18)
Define(bastion_of_light_talent 6)
Define(beacon_of_faith_talent 20)
Define(beacon_of_virtue_talent 21)
Define(bestow_faith_talent 2)
Define(blade_of_wrath_talent 5)
Define(blessed_hammer_talent 3)
Define(blessing_of_spellwarding_talent 12)
Define(blinding_light_talent 9)
Define(cavalier_talent_holy 4)
Define(cavalier_talent 13)
Define(consecrated_ground_talent 17)
Define(consecration_talent 11)
Define(crusade_talent 20)
Define(crusaders_judgment_talent 5)
Define(crusaders_might_talent 1)
Define(devotion_aura_talent 10)
Define(divine_judgment_talent 10)
Define(divine_purpose_talent 19)
Define(execution_sentence_talent 3)
Define(eye_for_an_eye_talent 15)
Define(final_stand_talent 13)
Define(fires_of_justice_talent 4)
Define(first_avenger_talent 4)
Define(fist_of_justice_talent 7)
Define(hammer_of_wrath_talent 6)
Define(hand_of_the_protector_talent 15)
Define(holy_avenger_talent 15)
Define(holy_prism_talent 14)
Define(holy_shield_talent 1)
Define(inquisition_talent 21)
Define(judgment_of_light_talent_holy 13)
Define(judgment_of_light_talent 16)
Define(justicars_vengeance_talent 17)
Define(last_defender_talent 19)
Define(lights_hammer_talent 3)
Define(redoubt_talent 2)
Define(repentance_talent 8)
Define(retribution_aura_talent 10)
Define(righteous_protector_talent 20)
Define(righteous_verdict_talent 2)
Define(rule_of_law_talent 6)
Define(sanctified_wrath_talent 16)
Define(selfless_healer_talent 16)
Define(seraphim_talent 21)
Define(unbreakable_spirit_talent_holy 5)
Define(unbreakable_spirit_talent 14)
Define(wake_of_ashes_talent 12)
Define(word_of_glory_talent 18)
Define(zeal_talent 1)

]]
    OvaleScripts:RegisterScript("PALADIN", nil, name, desc, code, "include")
end
