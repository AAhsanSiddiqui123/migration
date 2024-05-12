-- Revert: schemas/dashboard_public/tables/action_item_types/columns/self_verifiable/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types DROP COLUMN self_verifiable;
COMMIT;  

