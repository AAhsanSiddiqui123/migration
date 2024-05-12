-- Revert: schemas/dashboard_public/tables/user_saved_actions/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_saved_actions;
COMMIT;  

