-- Revert: schemas/dashboard_public/tables/actions/columns/bounds/alterations/alt0000000776 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".actions.bounds IS NULL;
COMMIT;  

