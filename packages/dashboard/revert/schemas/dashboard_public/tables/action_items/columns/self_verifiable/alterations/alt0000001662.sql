-- Revert: schemas/dashboard_public/tables/action_items/columns/self_verifiable/alterations/alt0000001662 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items 
    ALTER COLUMN self_verifiable DROP DEFAULT;

COMMIT;  

