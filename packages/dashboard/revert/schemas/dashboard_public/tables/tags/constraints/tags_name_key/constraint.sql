-- Revert: schemas/dashboard_public/tables/tags/constraints/tags_name_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".tags 
    DROP CONSTRAINT tags_name_key;

COMMIT;  

