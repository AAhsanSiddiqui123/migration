-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_slug_key/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    DROP CONSTRAINT actions_slug_key;

COMMIT;  

