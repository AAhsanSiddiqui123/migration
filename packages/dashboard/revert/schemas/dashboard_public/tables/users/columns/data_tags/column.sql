-- Revert: schemas/dashboard_public/tables/users/columns/data_tags/column from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN data_tags;
COMMIT;  

