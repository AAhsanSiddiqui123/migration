-- Revert: schemas/dashboard_public/tables/action_items/columns/is_required/alterations/alt0000000809 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN is_required DROP NOT NULL;


COMMIT;  

