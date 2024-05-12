-- Revert: schemas/dashboard_public/tables/addresses/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN owner_id;
COMMIT;  

