-- Revert: schemas/dashboard_public/tables/groups/columns/bounds/alterations/alt0000000275 from pg

BEGIN;
COMMENT ON COLUMN "dashboard_public".groups.bounds IS NULL;
COMMIT;  

