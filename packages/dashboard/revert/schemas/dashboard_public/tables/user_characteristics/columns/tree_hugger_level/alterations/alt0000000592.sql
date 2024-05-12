-- Revert: schemas/dashboard_public/tables/user_characteristics/columns/tree_hugger_level/alterations/alt0000000592 from pg

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics DROP CONSTRAINT user_characteristics_tree_hugger_level_chk;
COMMIT;  

