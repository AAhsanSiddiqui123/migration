-- Revert: schemas/dashboard_memberships_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_memberships_public" CASCADE;
COMMIT;  

