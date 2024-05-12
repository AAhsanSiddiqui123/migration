-- Revert: schemas/dashboard_public/tables/actions/alterations/alt0000001275 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".actions IS NULL;
COMMIT;  

