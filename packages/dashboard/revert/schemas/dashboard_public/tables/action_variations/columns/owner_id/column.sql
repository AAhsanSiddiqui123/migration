-- Revert: schemas/dashboard_public/tables/action_variations/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_variations DROP COLUMN owner_id;
COMMIT;  

