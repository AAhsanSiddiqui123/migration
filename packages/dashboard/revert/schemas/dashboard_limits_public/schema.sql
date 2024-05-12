-- Revert: schemas/dashboard_limits_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_limits_public" CASCADE;
COMMIT;  

