-- Deploy: schemas/dashboard_public/tables/user_characteristics/columns/tree_hugger_level/alterations/alt0000000592 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table
-- requires: schemas/dashboard_public/tables/user_characteristics/columns/tree_hugger_level/column

BEGIN;
ALTER TABLE "dashboard_public".user_characteristics ADD CONSTRAINT user_characteristics_tree_hugger_level_chk CHECK (tree_hugger_level >= 1 AND tree_hugger_level <= 5);
COMMIT;
