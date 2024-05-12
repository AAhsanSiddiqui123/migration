-- Revert: schemas/dashboard_status_public/tables/app_achievements/alterations/alt0000000153 from pg

BEGIN;
COMMENT ON TABLE "dashboard_status_public".app_achievements IS NULL;
COMMIT;  

