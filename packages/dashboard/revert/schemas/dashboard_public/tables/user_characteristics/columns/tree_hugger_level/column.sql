-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/tree_hugger_level/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_characteristics DROP COLUMN tree_hugger_level;
COMMIT;  

