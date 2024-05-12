-- Revert: schemas/dashboard_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_public" CASCADE;
COMMIT;  

