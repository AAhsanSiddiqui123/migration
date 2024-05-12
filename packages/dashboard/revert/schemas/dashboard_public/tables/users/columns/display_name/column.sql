-- Revert: schemas/dashboard_public/tables/users/columns/display_name/column from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN display_name;
COMMIT;  

