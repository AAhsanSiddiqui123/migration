-- Revert: schemas/dashboard_public/tables/role_types/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".role_types DROP COLUMN id;
COMMIT;  

