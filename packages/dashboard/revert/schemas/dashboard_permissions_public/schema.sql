-- Revert: schemas/dashboard_permissions_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_permissions_public" CASCADE;
COMMIT;  

