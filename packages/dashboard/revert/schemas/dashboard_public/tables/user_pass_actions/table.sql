-- Revert: schemas/dashboard_public/tables/user_pass_actions/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_pass_actions;
COMMIT;  

