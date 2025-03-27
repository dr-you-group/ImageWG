--sql server MI-CDM Primary Key Constraints for OMOP Common Data Model 5.4
ALTER TABLE @cdmDatabaseSchema.image_occurrence ADD CONSTRAINT xpk_image_occurrence PRIMARY KEY NONCLUSTERED (image_occurrence_id);
ALTER TABLE @cdmDatabaseSchema.image_feature ADD CONSTRAINT xpk_image_feature PRIMARY KEY NONCLUSTERED (image_feature_id);
