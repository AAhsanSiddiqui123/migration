-- Revert: schemas/dashboard_public/tables/impacts/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN owner_id;
COMMIT;  

