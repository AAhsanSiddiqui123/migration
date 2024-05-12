-- Revert: schemas/dashboard_roles_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_roles_private" CASCADE;
COMMIT;  

