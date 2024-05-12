-- Revert: schemas/dashboard_public/tables/related_actions/columns/is_required/alterations/alt0000000825 from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions 
    ALTER COLUMN is_required DROP DEFAULT;

COMMIT;  

