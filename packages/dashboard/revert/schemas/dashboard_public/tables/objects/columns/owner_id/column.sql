-- Revert: schemas/dashboard_public/tables/objects/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".objects DROP COLUMN owner_id;
COMMIT;  

