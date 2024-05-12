-- Revert: schemas/dashboard_public/tables/user_connections/columns/accepted/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections DROP COLUMN accepted;
COMMIT;  

