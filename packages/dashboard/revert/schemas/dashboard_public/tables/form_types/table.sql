-- Revert: schemas/dashboard_public/tables/form_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".form_types;
COMMIT;  

