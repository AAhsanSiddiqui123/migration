-- Revert: schemas/dashboard_roles_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_roles_public" CASCADE;
COMMIT;  

