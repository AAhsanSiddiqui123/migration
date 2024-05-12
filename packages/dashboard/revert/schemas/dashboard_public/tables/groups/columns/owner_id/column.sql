-- Revert: schemas/dashboard_public/tables/groups/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN owner_id;
COMMIT;  

