-- Revert: schemas/dashboard_simple_secrets/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_simple_secrets" CASCADE;
COMMIT;  

