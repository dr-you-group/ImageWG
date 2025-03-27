ALTER TABLE @cdmDatabaseSchema.person ADD CONSTRAINT xpk_person  (person_id);
ALTER TABLE @cdmDatabaseSchema.observation_period ADD CONSTRAINT xpk_observation_period  (observation_period_id);
ALTER TABLE @cdmDatabaseSchema.visit_occurrence ADD CONSTRAINT xpk_visit_occurrence  (visit_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.visit_detail ADD CONSTRAINT xpk_visit_detail  (visit_detail_id);
ALTER TABLE @cdmDatabaseSchema.condition_occurrence ADD CONSTRAINT xpk_condition_occurrence  (condition_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.drug_exposure ADD CONSTRAINT xpk_drug_exposure  (drug_exposure_id);
ALTER TABLE @cdmDatabaseSchema.procedure_occurrence ADD CONSTRAINT xpk_procedure_occurrence  (procedure_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.device_exposure ADD CONSTRAINT xpk_device_exposure  (device_exposure_id);
ALTER TABLE @cdmDatabaseSchema.measurement ADD CONSTRAINT xpk_measurement  (measurement_id);
ALTER TABLE @cdmDatabaseSchema.observation ADD CONSTRAINT xpk_observation  (observation_id);
ALTER TABLE @cdmDatabaseSchema.note ADD CONSTRAINT xpk_note  (note_id);
ALTER TABLE @cdmDatabaseSchema.note_nlp ADD CONSTRAINT xpk_note_nlp  (note_nlp_id);
ALTER TABLE @cdmDatabaseSchema.specimen ADD CONSTRAINT xpk_specimen  (specimen_id);
ALTER TABLE @cdmDatabaseSchema.location ADD CONSTRAINT xpk_location  (location_id);
ALTER TABLE @cdmDatabaseSchema.care_site ADD CONSTRAINT xpk_care_site  (care_site_id);
ALTER TABLE @cdmDatabaseSchema.provider ADD CONSTRAINT xpk_provider  (provider_id);
ALTER TABLE @cdmDatabaseSchema.payer_plan_period ADD CONSTRAINT xpk_payer_plan_period  (payer_plan_period_id);
ALTER TABLE @cdmDatabaseSchema.cost ADD CONSTRAINT xpk_cost  (cost_id);
ALTER TABLE @cdmDatabaseSchema.drug_era ADD CONSTRAINT xpk_drug_era  (drug_era_id);
ALTER TABLE @cdmDatabaseSchema.dose_era ADD CONSTRAINT xpk_dose_era  (dose_era_id);
ALTER TABLE @cdmDatabaseSchema.condition_era ADD CONSTRAINT xpk_condition_era  (condition_era_id);
ALTER TABLE @cdmDatabaseSchema.episode ADD CONSTRAINT xpk_episode  (episode_id);
ALTER TABLE @cdmDatabaseSchema.metadata ADD CONSTRAINT xpk_metadata  (metadata_id);
ALTER TABLE @cdmDatabaseSchema.concept ADD CONSTRAINT xpk_concept  (concept_id);
ALTER TABLE @cdmDatabaseSchema.vocabulary ADD CONSTRAINT xpk_vocabulary  (vocabulary_id);
ALTER TABLE @cdmDatabaseSchema.domain ADD CONSTRAINT xpk_domain  (domain_id);
ALTER TABLE @cdmDatabaseSchema.concept_class ADD CONSTRAINT xpk_concept_class  (concept_class_id);
ALTER TABLE @cdmDatabaseSchema.relationship ADD CONSTRAINT xpk_relationship  (relationship_id);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT xpk_image_occurrence  (image_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT xpk_image_feature  (image_feature_id);
