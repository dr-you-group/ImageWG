--sql server MI-CDM Primary Key Constraints for OMOP Common Data Model 5.4
alter table @cdmDatabaseSchema.image_occurrence add constraint xpk_image_occurrence primary key nonclustered (image_occurrence_id);
alter table @cdmDatabaseSchema.image_feature add constraint xpk_image_feature primary key nonclustered (image_feature_id);
