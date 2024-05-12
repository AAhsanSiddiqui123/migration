-- Revert: schemas/dashboard_public/tables/action_items/columns/self_verifiable/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN self_verifiable;
COMMIT;  

