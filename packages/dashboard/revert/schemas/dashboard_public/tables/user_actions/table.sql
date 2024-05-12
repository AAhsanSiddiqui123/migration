-- Revert: schemas/dashboard_public/tables/user_actions/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_actions;
COMMIT;  

