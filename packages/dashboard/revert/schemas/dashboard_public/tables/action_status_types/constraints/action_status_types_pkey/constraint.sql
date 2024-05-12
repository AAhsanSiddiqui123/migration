-- Revert: schemas/dashboard_public/tables/action_status_types/constraints/action_status_types_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types 
    DROP CONSTRAINT action_status_types_pkey;

COMMIT;  

