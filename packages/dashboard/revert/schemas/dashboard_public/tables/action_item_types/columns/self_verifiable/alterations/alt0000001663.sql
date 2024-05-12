-- Revert: schemas/dashboard_public/tables/action_item_types/columns/self_verifiable/alterations/alt0000001663 from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types 
    ALTER COLUMN self_verifiable DROP DEFAULT;

COMMIT;  

