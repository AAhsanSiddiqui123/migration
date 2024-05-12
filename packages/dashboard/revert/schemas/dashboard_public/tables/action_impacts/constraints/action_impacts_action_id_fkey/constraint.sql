-- Revert: schemas/dashboard_public/tables/action_impacts/constraints/action_impacts_action_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts 
    DROP CONSTRAINT action_impacts_action_id_fkey;

COMMIT;  

