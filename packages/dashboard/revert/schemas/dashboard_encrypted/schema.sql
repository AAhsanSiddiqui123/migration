-- Revert: schemas/dashboard_encrypted/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_encrypted" CASCADE;
COMMIT;  

