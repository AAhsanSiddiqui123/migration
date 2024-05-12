-- Revert: schemas/dashboard_status_public/tables/app_levels/alterations/alt0000000162 from pg

BEGIN;
COMMENT ON TABLE "dashboard_status_public".app_levels IS NULL;
COMMIT;  

