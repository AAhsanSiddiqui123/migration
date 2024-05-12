-- Revert: schemas/dashboard_status_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_status_private" CASCADE;
COMMIT;  

