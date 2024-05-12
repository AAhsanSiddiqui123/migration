-- Revert: schemas/dashboard_permissions_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_permissions_private" CASCADE;
COMMIT;  

