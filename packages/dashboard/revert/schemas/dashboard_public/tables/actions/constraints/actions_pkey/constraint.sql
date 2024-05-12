-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    DROP CONSTRAINT actions_pkey;

COMMIT;  

