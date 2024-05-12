-- Revert: schemas/dashboard_memberships_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_memberships_private" CASCADE;
COMMIT;  

