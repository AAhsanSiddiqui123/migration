-- Revert: schemas/dashboard_public/tables/users/columns/type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN type;
COMMIT;  

