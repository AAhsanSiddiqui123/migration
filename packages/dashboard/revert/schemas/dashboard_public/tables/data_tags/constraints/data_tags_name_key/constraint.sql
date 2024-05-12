-- Revert: schemas/dashboard_public/tables/data_tags/constraints/data_tags_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags 
    DROP CONSTRAINT data_tags_name_key;

COMMIT;  

