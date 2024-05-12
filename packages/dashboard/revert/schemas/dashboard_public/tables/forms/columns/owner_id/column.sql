-- Revert: schemas/dashboard_public/tables/forms/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN owner_id;
COMMIT;  

