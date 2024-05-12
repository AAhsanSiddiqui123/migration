-- Revert: schemas/dashboard_public/tables/user_viewed_actions/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_viewed_actions;
COMMIT;  

