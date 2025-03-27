--sql server MI-CDM DDL Specification for OMOP Common Data Model 5.4
CREATE TABLE @cdmDatabaseSchema.image_occurrence (
			image_occurrence_id INT, 
            person_id INT, 
            procedure_occurrence_id INT, 
            visit_occurrence_id integer NULL,
    		anatomic_site_concept_id integer NULL,
    		wadors_uri VARCHAR(MAX),
            local_path VARCHAR(MAX),
            image_occurrence_date TIMESTAMP,
    		image_study_uid VARCHAR(MAX),
    		image_series_uid VARCHAR(MAX),
    		modality_concept_id INT);
CREATE TABLE @cdmDatabaseSchema.image_feature(
				image_feature_id INT,
				person_id INT,
    			image_occurrence_id INT,
    			image_feature_event_field_concept_id integer NULL,
    			image_feature_event_id integer NULL,
    			image_feature_concept_id INT,
    			image_feature_type_concept_id INT,
    			image_finding_concept_id integer NULL,
    			image_finding_id integer NULL,
    			anatomic_site_concept_id integer NULL,
    			alg_system VARCHAR(MAX),
    			alg_datetime TIMESTAMP);
				
