-- Revert: schemas/dashboard_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_private" CASCADE;
COMMIT;  

