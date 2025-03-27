/*sql server MI-CDM Indices
  There are no unique indices created because it is assumed that the primary key constraints have been run prior to
  implementing indices.
*/
/**************************
Medical Imaging Extension Tables
***************************/
CREATE CLUSTERED INDEX idx_image_occurrence_id ON @cdmDatabaseSchema.image_occurrence (image_occurrence_id ASC);
CREATE INDEX idx_image_occurrence_person_id ON @cdmDatabaseSchema.image_occurrence (person_id ASC);
CREATE INDEX idx_image_occurrence_procedure_occurrence_id ON @cdmDatabaseSchema.image_occurrence (procedure_occurrence_id ASC);
CREATE INDEX idx_image_occurrence_visit_occurrence_id ON @cdmDatabaseSchema.image_occurrence (visit_occurrence_id ASC);
CREATE CLUSTERED INDEX idx_image_feature_id ON @cdmDatabaseSchema.image_feature (image_feature_id ASC);
CREATE INDEX idx_image_feature_person_id ON @cdmDatabaseSchema.image_feature (person_id ASC);
CREATE INDEX idx_image_feature_image_occurrence_id ON @cdmDatabaseSchema.image_feature (image_occurrence_id ASC);
