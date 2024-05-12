-- Revert: schemas/dashboard_status_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_status_public" CASCADE;
COMMIT;  

