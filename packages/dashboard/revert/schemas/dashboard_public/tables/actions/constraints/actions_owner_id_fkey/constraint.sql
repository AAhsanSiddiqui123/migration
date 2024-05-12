-- Revert: schemas/dashboard_public/tables/actions/constraints/actions_owner_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    DROP CONSTRAINT actions_owner_id_fkey;

COMMIT;  

