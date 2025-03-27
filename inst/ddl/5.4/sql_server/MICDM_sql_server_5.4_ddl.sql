--sql server MI-CDM DDL Specification for OMOP Common Data Model 5.4
CREATE TABLE @cdmDatabaseSchema.image_occurrence (
			image_occurrence_id integer NOT NULL, 
            person_id integer NOT NULL, 
            procedure_occurrence_id integer NOT NULL, 
            visit_occurrence_id integer NULL,
    		anatomic_site_concept_id integer NULL,
    		wadors_uri varchar(MAX) NULL,
            local_path varchar(MAX) NULL,
            image_occurrence_date date NOT NULL,
    		image_study_uid varchar(MAX) NOT NULL,
    		image_series_uid varchar(MAX) NOT NULL,
    		modality_concept_id integer NOT NULL);
CREATE TABLE @cdmDatabaseSchema.image_feature(
				image_feature_id integer NOT NULL,
				person_id integer NOT NULL,
    			image_occurrence_id integer NOT NULL,
    			image_feature_event_field_concept_id integer NULL,
    			image_feature_event_id integer NULL,
    			image_feature_concept_id integer NOT NULL,
    			image_feature_type_concept_id integer NOT NULL,
    			image_finding_concept_id integer NULL,
    			image_finding_id integer NULL,
    			anatomic_site_concept_id integer NULL,
    			alg_system varchar(MAX) NULL,
    			alg_datetime timestamp NULL);
				
