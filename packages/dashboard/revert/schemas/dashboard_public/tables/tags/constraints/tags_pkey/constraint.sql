-- Revert: schemas/dashboard_public/tables/tags/constraints/tags_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".tags 
    DROP CONSTRAINT tags_pkey;

COMMIT;  

