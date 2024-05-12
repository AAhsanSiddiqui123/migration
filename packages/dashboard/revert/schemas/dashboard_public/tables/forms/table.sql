-- Revert: schemas/dashboard_public/tables/forms/table from pg

BEGIN;
DROP TABLE "dashboard_public".forms;
COMMIT;  

