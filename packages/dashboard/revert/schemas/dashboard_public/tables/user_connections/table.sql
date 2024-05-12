-- Revert: schemas/dashboard_public/tables/user_connections/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_connections;
COMMIT;  

