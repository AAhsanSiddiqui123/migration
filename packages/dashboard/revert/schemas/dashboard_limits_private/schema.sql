-- Revert: schemas/dashboard_limits_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_limits_private" CASCADE;
COMMIT;  

