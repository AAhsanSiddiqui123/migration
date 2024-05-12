-- Revert: schemas/dashboard_public/tables/role_types/table from pg

BEGIN;
DROP TABLE "dashboard_public".role_types;
COMMIT;  

