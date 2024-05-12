-- Revert: schemas/dashboard_public/tables/data_tags/constraints/data_tags_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".data_tags 
    DROP CONSTRAINT data_tags_pkey;

COMMIT;  

