-- Revert: schemas/dashboard_public/tables/users/table from pg

BEGIN;
DROP TABLE "dashboard_public".users;
COMMIT;  

