-- Revert: schemas/dashboard_public/tables/action_impacts/constraints/action_impacts_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_impacts 
    DROP CONSTRAINT action_impacts_pkey;

COMMIT;  

