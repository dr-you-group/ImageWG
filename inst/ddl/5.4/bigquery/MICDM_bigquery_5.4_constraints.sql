--sql server CDM Foreign Key Constraints for OMOP Common Data Model 5.4
alter table @cdmDatabaseSchema.image_occurrence add constraint fpk_image_occurrence_person_id foreign key (person_id) references @cdmDatabaseSchema.person (person_id);
alter table @cdmDatabaseSchema.image_occurrence add constraint fpk_image_occurrence_procedure_occurrence_id foreign key (procedure_occurrence_id) references @cdmDatabaseSchema.procedure_occurrence (procedure_occurrence_id);
alter table @cdmDatabaseSchema.image_occurrence add constraint fpk_image_occurrence_visit_occurrence_id foreign key (visit_occurrence_id) references @cdmDatabaseSchema.visit_occurrence (visit_occurrence_id);
alter table @cdmDatabaseSchema.image_occurrence add constraint fpk_image_occurrence_anatomic_site_concept_id foreign key (anatomic_site_concept_id) references @cdmDatabaseSchema.concept (concept_id);
alter table @cdmDatabaseSchema.image_feature add constraint fpk_image_feature_person_id foreign key (person_id) references @cdmDatabaseSchema.person (person_id);
alter table @cdmDatabaseSchema.image_feature add constraint fpk_image_feature_image_occurrence_id foreign key (image_occurrence_id) references @cdmDatabaseSchema.image_occurrence (image_occurrence_id);
alter table @cdmDatabaseSchema.image_feature add constraint fpk_image_feature_event_field_concept_id foreign key (image_feature_event_field_concept_id) references @cdmDatabaseSchema.concept (concept_id);
