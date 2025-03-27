--sql server MI-CDM DDL Specification for OMOP Common Data Model 5.4
create table @cdmDatabaseSchema.image_occurrence (
			image_occurrence_id INT64 not null, 
            person_id INT64 not null, 
            procedure_occurrence_id INT64 not null, 
            visit_occurrence_id INT64,
    		anatomic_site_concept_id INT64,
    		wadors_uri STRING,
            local_path STRING,
            image_occurrence_date date not null,
    		image_study_uid STRING not null,
    		image_series_uid STRING not null,
    		modality_concept_id INT64 not null);
create table @cdmDatabaseSchema.image_feature(
				image_feature_id INT64 not null,
				person_id INT64 not null,
    			image_occurrence_id INT64 not null,
    			image_feature_event_field_concept_id INT64,
    			image_feature_event_id INT64,
    			image_feature_concept_id INT64 not null,
    			image_feature_type_concept_id INT64 not null,
    			image_finding_concept_id INT64,
    			image_finding_id INT64,
    			anatomic_site_concept_id INT64,
    			alg_system STRING,
    			alg_datetime timestamp null);
				
