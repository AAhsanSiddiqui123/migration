-- Revert: schemas/dashboard_public/tables/role_types/columns/name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".role_types DROP COLUMN name;
COMMIT;  

