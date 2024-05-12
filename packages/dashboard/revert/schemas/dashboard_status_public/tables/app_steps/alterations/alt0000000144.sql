-- Revert: schemas/dashboard_status_public/tables/app_steps/alterations/alt0000000144 from pg

BEGIN;
COMMENT ON TABLE "dashboard_status_public".app_steps IS NULL;
COMMIT;  

