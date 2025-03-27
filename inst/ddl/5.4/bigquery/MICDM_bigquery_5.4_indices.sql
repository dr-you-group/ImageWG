/*sql server MI-CDM Indices
  There are no unique indices created because it is assumed that the primary key constraints have been run prior to
  implementing indices.
*/
/**************************
Medical Imaging Extension Tables
***************************/
create clustered index idx_image_occurrence_id on @cdmDatabaseSchema.image_occurrence (image_occurrence_id asc);
-- bigquery does not support indexes
-- bigquery does not support indexes
-- bigquery does not support indexes
create clustered index idx_image_feature_id on @cdmDatabaseSchema.image_feature (image_feature_id asc);
-- bigquery does not support indexes
-- bigquery does not support indexes
