-- Revert: schemas/dashboard_public/tables/groups/columns/bounds/column from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN bounds;
COMMIT;  

