-- Revert: schemas/dashboard_public/tables/action_items/columns/is_required/alterations/alt0000000810 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN is_required DROP DEFAULT;

COMMIT;  

