-- Revert: schemas/dashboard_public/tables/tracks/alterations/alt0000001419 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".tracks IS NULL;
COMMIT;  

