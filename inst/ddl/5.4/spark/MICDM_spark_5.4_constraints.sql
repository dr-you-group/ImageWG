ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_procedure_occurrence_id FOREIGN KEY (procedure_occurrence_id) REFERENCES @cdmDatabaseSchema.procedure_occurrence (procedure_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES @cdmDatabaseSchema.visit_occurrence (visit_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT fpk_image_occurrence_anatomic_site_concept_id FOREIGN KEY (anatomic_site_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (concept_id);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT fpk_image_feature_person_id FOREIGN KEY (person_id) REFERENCES @cdmDatabaseSchema.PERSON (PERSON_ID);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT fpk_image_feature_image_occurrence_id FOREIGN KEY (image_occurrence_id) REFERENCES @cdmDatabaseSchema.IMAGE_OCCURRENCE (image_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT fpk_image_feature_event_field_concept_id FOREIGN KEY (image_feature_event_field_concept_id) REFERENCES @cdmDatabaseSchema.CONCEPT (concept_id);
