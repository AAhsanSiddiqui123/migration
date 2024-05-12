-- Revert: schemas/dashboard_public/tables/user_forms/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_forms;
COMMIT;  

