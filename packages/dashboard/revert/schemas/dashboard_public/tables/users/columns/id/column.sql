-- Revert: schemas/dashboard_public/tables/users/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN id;
COMMIT;  

