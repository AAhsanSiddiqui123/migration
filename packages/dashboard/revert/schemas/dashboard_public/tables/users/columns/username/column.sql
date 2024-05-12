-- Revert: schemas/dashboard_public/tables/users/columns/username/column from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN username;
COMMIT;  

