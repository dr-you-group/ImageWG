CREATE TABLE @cdmDatabaseSchema.image_occurrence  
USING DELTA
 AS
SELECT
CAST(NULL AS integer) AS image_occurrence_id,
	CAST(NULL AS integer) AS person_id,
	CAST(NULL AS integer) AS procedure_occurrence_id,
	CAST(NULL AS integer) AS visit_occurrence_id,
	CAST(NULL AS integer) AS anatomic_site_concept_id,
	CAST(NULL AS STRING) AS wadors_uri,
	CAST(NULL AS STRING) AS local_path,
	IF(try_cast(NULL  AS DATE) IS NULL, to_date(cast(NULL  AS STRING), 'yyyyMMdd'), try_cast(NULL  AS DATE)) AS image_occurrence_date,
	CAST(NULL AS STRING) AS image_study_uid,
	CAST(NULL AS STRING) AS image_series_uid,
	CAST(NULL AS integer) AS modality_concept_id  WHERE 1 = 0;
CREATE TABLE @cdmDatabaseSchema.image_feature 
USING DELTA
 AS
SELECT
CAST(NULL AS integer) AS image_feature_id,
	CAST(NULL AS integer) AS person_id,
	CAST(NULL AS integer) AS image_occurrence_id,
	CAST(NULL AS integer) AS image_feature_event_field_concept_id,
	CAST(NULL AS integer) AS image_feature_event_id,
	CAST(NULL AS integer) AS image_feature_concept_id,
	CAST(NULL AS integer) AS image_feature_type_concept_id,
	CAST(NULL AS integer) AS image_finding_concept_id,
	CAST(NULL AS integer) AS image_finding_id,
	CAST(NULL AS integer) AS anatomic_site_concept_id,
	CAST(NULL AS STRING) AS alg_system,
	CAST(NULL AS timestamp) AS alg_datetime  WHERE 1 = 0;
