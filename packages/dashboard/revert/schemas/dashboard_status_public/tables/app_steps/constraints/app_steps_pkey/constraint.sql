-- Revert: schemas/dashboard_status_public/tables/app_steps/constraints/app_steps_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_steps 
    DROP CONSTRAINT app_steps_pkey;

COMMIT;  

