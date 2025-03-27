ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_gender_concept_id FOREIGN KEY (gender_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_race_concept_id FOREIGN KEY (race_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_ethnicity_concept_id FOREIGN KEY (ethnicity_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_location_id FOREIGN KEY (location_id) REFERENCES @cdmDatabaseSchema.LOCATION (LOCATION_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_care_site_id FOREIGN KEY (care_site_id) REFERENCES @cdmDatabaseSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_gender_source_concept_id FOREIGN KEY (gender_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_race_source_concept_id FOREIGN KEY (race_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT fpk_person_ethnicity_source_concept_id FOREIGN KEY (ethnicity_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation_period ADD CONSTRAINT fpk_observation_period_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.observation_period ADD CONSTRAINT fpk_observation_period_period_type_concept_id FOREIGN KEY (period_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_visit_concept_id FOREIGN KEY (visit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_visit_type_concept_id FOREIGN KEY (visit_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_care_site_id FOREIGN KEY (care_site_id) REFERENCES @cdmDatabaseSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_visit_source_concept_id FOREIGN KEY (visit_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_admitted_from_concept_id FOREIGN KEY (admitted_from_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_discharged_to_concept_id FOREIGN KEY (discharged_to_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_preceding_visit_occurrence_id FOREIGN KEY (preceding_visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_detail_concept_id FOREIGN KEY (visit_detail_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_detail_type_concept_id FOREIGN KEY (visit_detail_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_care_site_id FOREIGN KEY (care_site_id) REFERENCES @cdmDatabaseSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_detail_source_concept_id FOREIGN KEY (visit_detail_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_admitted_from_concept_id FOREIGN KEY (admitted_from_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_discharged_to_concept_id FOREIGN KEY (discharged_to_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_preceding_visit_detail_id FOREIGN KEY (preceding_visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_parent_visit_detail_id FOREIGN KEY (parent_visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_concept_id FOREIGN KEY (condition_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_type_concept_id FOREIGN KEY (condition_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_status_concept_id FOREIGN KEY (condition_status_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_source_concept_id FOREIGN KEY (condition_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_drug_type_concept_id FOREIGN KEY (drug_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_route_concept_id FOREIGN KEY (route_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_drug_source_concept_id FOREIGN KEY (drug_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_procedure_concept_id FOREIGN KEY (procedure_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_procedure_type_concept_id FOREIGN KEY (procedure_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_modifier_concept_id FOREIGN KEY (modifier_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_procedure_source_concept_id FOREIGN KEY (procedure_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_device_concept_id FOREIGN KEY (device_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_device_type_concept_id FOREIGN KEY (device_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_device_source_concept_id FOREIGN KEY (device_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_unit_source_concept_id FOREIGN KEY (unit_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_measurement_concept_id FOREIGN KEY (measurement_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_measurement_type_concept_id FOREIGN KEY (measurement_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_operator_concept_id FOREIGN KEY (operator_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_measurement_source_concept_id FOREIGN KEY (measurement_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_unit_source_concept_id FOREIGN KEY (unit_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT fpk_measurement_meas_event_field_concept_id FOREIGN KEY (meas_event_field_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_observation_concept_id FOREIGN KEY (observation_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_observation_type_concept_id FOREIGN KEY (observation_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_qualifier_concept_id FOREIGN KEY (qualifier_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_observation_source_concept_id FOREIGN KEY (observation_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT fpk_observation_obs_event_field_concept_id FOREIGN KEY (obs_event_field_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.death ADD CONSTRAINT fpk_death_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.death ADD CONSTRAINT fpk_death_death_type_concept_id FOREIGN KEY (death_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.death ADD CONSTRAINT fpk_death_cause_concept_id FOREIGN KEY (cause_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.death ADD CONSTRAINT fpk_death_cause_source_concept_id FOREIGN KEY (cause_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_note_type_concept_id FOREIGN KEY (note_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_note_class_concept_id FOREIGN KEY (note_class_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_encoding_concept_id FOREIGN KEY (encoding_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_language_concept_id FOREIGN KEY (language_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_provider_id FOREIGN KEY (provider_id) REFERENCES @cdmDatabaseSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES @cdmDatabaseSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT fpk_note_note_event_field_concept_id FOREIGN KEY (note_event_field_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note_nlp ADD CONSTRAINT fpk_note_nlp_section_concept_id FOREIGN KEY (section_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note_nlp ADD CONSTRAINT fpk_note_nlp_note_nlp_concept_id FOREIGN KEY (note_nlp_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.note_nlp ADD CONSTRAINT fpk_note_nlp_note_nlp_source_concept_id FOREIGN KEY (note_nlp_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.specimen ADD CONSTRAINT fpk_specimen_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.specimen ADD CONSTRAINT fpk_specimen_specimen_concept_id FOREIGN KEY (specimen_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.specimen ADD CONSTRAINT fpk_specimen_specimen_type_concept_id FOREIGN KEY (specimen_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.specimen ADD CONSTRAINT fpk_specimen_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.specimen ADD CONSTRAINT fpk_specimen_anatomic_site_concept_id FOREIGN KEY (anatomic_site_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.specimen ADD CONSTRAINT fpk_specimen_disease_status_concept_id FOREIGN KEY (disease_status_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.fact_relationship ADD CONSTRAINT fpk_fact_relationship_domain_concept_id_1 FOREIGN KEY (domain_concept_id_1) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.fact_relationship ADD CONSTRAINT fpk_fact_relationship_domain_concept_id_2 FOREIGN KEY (domain_concept_id_2) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.fact_relationship ADD CONSTRAINT fpk_fact_relationship_relationship_concept_id FOREIGN KEY (relationship_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.location ADD CONSTRAINT fpk_location_country_concept_id FOREIGN KEY (country_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.care_site ADD CONSTRAINT fpk_care_site_place_of_service_concept_id FOREIGN KEY (place_of_service_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.care_site ADD CONSTRAINT fpk_care_site_location_id FOREIGN KEY (location_id) REFERENCES @cdmDatabaseSchema.LOCATION (LOCATION_ID);
ALTER TABLE @cdmDatabaseSchema.provider ADD CONSTRAINT fpk_provider_specialty_concept_id FOREIGN KEY (specialty_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.provider ADD CONSTRAINT fpk_provider_care_site_id FOREIGN KEY (care_site_id) REFERENCES @cdmDatabaseSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE @cdmDatabaseSchema.provider ADD CONSTRAINT fpk_provider_gender_concept_id FOREIGN KEY (gender_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.provider ADD CONSTRAINT fpk_provider_specialty_source_concept_id FOREIGN KEY (specialty_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.provider ADD CONSTRAINT fpk_provider_gender_source_concept_id FOREIGN KEY (gender_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_payer_concept_id FOREIGN KEY (payer_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_payer_source_concept_id FOREIGN KEY (payer_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_plan_concept_id FOREIGN KEY (plan_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_plan_source_concept_id FOREIGN KEY (plan_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_sponsor_concept_id FOREIGN KEY (sponsor_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_sponsor_source_concept_id FOREIGN KEY (sponsor_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_stop_reason_concept_id FOREIGN KEY (stop_reason_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_stop_reason_source_concept_id FOREIGN KEY (stop_reason_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.cost ADD CONSTRAINT fpk_cost_cost_domain_id FOREIGN KEY (cost_domain_id) REFERENCES @cdmDatabaseSchema.DOMAIN (DOMAIN_ID);
ALTER TABLE @cdmDatabaseSchema.cost ADD CONSTRAINT fpk_cost_cost_type_concept_id FOREIGN KEY (cost_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.cost ADD CONSTRAINT fpk_cost_currency_concept_id FOREIGN KEY (currency_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.cost ADD CONSTRAINT fpk_cost_revenue_code_concept_id FOREIGN KEY (revenue_code_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.cost ADD CONSTRAINT fpk_cost_drg_concept_id FOREIGN KEY (drg_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_era ADD CONSTRAINT fpk_drug_era_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.drug_era ADD CONSTRAINT fpk_drug_era_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.dose_era ADD CONSTRAINT fpk_dose_era_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.dose_era ADD CONSTRAINT fpk_dose_era_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.dose_era ADD CONSTRAINT fpk_dose_era_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.condition_era ADD CONSTRAINT fpk_condition_era_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.condition_era ADD CONSTRAINT fpk_condition_era_condition_concept_id FOREIGN KEY (condition_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.episode ADD CONSTRAINT fpk_episode_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.episode ADD CONSTRAINT fpk_episode_episode_concept_id FOREIGN KEY (episode_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.episode ADD CONSTRAINT fpk_episode_episode_object_concept_id FOREIGN KEY (episode_object_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.episode ADD CONSTRAINT fpk_episode_episode_type_concept_id FOREIGN KEY (episode_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.episode ADD CONSTRAINT fpk_episode_episode_source_concept_id FOREIGN KEY (episode_source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.episode_event ADD CONSTRAINT fpk_episode_event_episode_id FOREIGN KEY (episode_id) REFERENCES @cdmDatabaseSchema.EPISODE (EPISODE_ID);
ALTER TABLE @cdmDatabaseSchema.episode_event ADD CONSTRAINT fpk_episode_event_episode_event_field_concept_id FOREIGN KEY (episode_event_field_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.metadata ADD CONSTRAINT fpk_metadata_metadata_concept_id FOREIGN KEY (metadata_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.metadata ADD CONSTRAINT fpk_metadata_metadata_type_concept_id FOREIGN KEY (metadata_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.metadata ADD CONSTRAINT fpk_metadata_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.cdm_source ADD CONSTRAINT fpk_cdm_source_cdm_version_concept_id FOREIGN KEY (cdm_version_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept ADD CONSTRAINT fpk_concept_domain_id FOREIGN KEY (domain_id) REFERENCES @cdmDatabaseSchema.DOMAIN (DOMAIN_ID);
ALTER TABLE @cdmDatabaseSchema.concept ADD CONSTRAINT fpk_concept_vocabulary_id FOREIGN KEY (vocabulary_id) REFERENCES @cdmDatabaseSchema.VOCABULARY (VOCABULARY_ID);
ALTER TABLE @cdmDatabaseSchema.concept ADD CONSTRAINT fpk_concept_concept_class_id FOREIGN KEY (concept_class_id) REFERENCES @cdmDatabaseSchema.CONCEPT_CLASS (CONCEPT_CLASS_ID);
ALTER TABLE @cdmDatabaseSchema.vocabulary ADD CONSTRAINT fpk_vocabulary_vocabulary_concept_id FOREIGN KEY (vocabulary_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.domain ADD CONSTRAINT fpk_domain_domain_concept_id FOREIGN KEY (domain_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_class ADD CONSTRAINT fpk_concept_class_concept_class_concept_id FOREIGN KEY (concept_class_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_relationship ADD CONSTRAINT fpk_concept_relationship_concept_id_1 FOREIGN KEY (concept_id_1) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_relationship ADD CONSTRAINT fpk_concept_relationship_concept_id_2 FOREIGN KEY (concept_id_2) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_relationship ADD CONSTRAINT fpk_concept_relationship_relationship_id FOREIGN KEY (relationship_id) REFERENCES @cdmDatabaseSchema.RELATIONSHIP (RELATIONSHIP_ID);
ALTER TABLE @cdmDatabaseSchema.relationship ADD CONSTRAINT fpk_relationship_relationship_concept_id FOREIGN KEY (relationship_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_synonym ADD CONSTRAINT fpk_concept_synonym_concept_id FOREIGN KEY (concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_synonym ADD CONSTRAINT fpk_concept_synonym_language_concept_id FOREIGN KEY (language_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_ancestor ADD CONSTRAINT fpk_concept_ancestor_ancestor_concept_id FOREIGN KEY (ancestor_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.concept_ancestor ADD CONSTRAINT fpk_concept_ancestor_descendant_concept_id FOREIGN KEY (descendant_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.source_to_concept_map ADD CONSTRAINT fpk_source_to_concept_map_source_concept_id FOREIGN KEY (source_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.source_to_concept_map ADD CONSTRAINT fpk_source_to_concept_map_target_concept_id FOREIGN KEY (target_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.source_to_concept_map ADD CONSTRAINT fpk_source_to_concept_map_target_vocabulary_id FOREIGN KEY (target_vocabulary_id) REFERENCES @cdmDatabaseSchema.VOCABULARY (VOCABULARY_ID);
ALTER TABLE @cdmDatabaseSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_ingredient_concept_id FOREIGN KEY (ingredient_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_amount_unit_concept_id FOREIGN KEY (amount_unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_numerator_unit_concept_id FOREIGN KEY (numerator_unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_denominator_unit_concept_id FOREIGN KEY (denominator_unit_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.cohort_definition ADD CONSTRAINT fpk_cohort_definition_definition_type_concept_id FOREIGN KEY (definition_type_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.cohort_definition ADD CONSTRAINT fpk_cohort_definition_subject_concept_id FOREIGN KEY (subject_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_procedure_occurrence_id FOREIGN KEY (procedure_occurrence_id) REFERENCES @cdmDatabaseSchema.procedure_occurrence (procedure_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.visit_occurrence (visit_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_anatomic_site_concept_id FOREIGN KEY (anatomic_site_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (concept_id);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT fpk_image_feature_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT fpk_image_feature_image_occurrence_id FOREIGN KEY (image_occurrence_id) REFERENCES @cdmDatabaseSchema.IMAGE_OCCURRENCE (image_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT fpk_image_feature_event_field_concept_id FOREIGN KEY (image_feature_event_field_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (concept_id);
