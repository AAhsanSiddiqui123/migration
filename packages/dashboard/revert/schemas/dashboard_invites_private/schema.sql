-- Revert: schemas/dashboard_invites_private/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_invites_private" CASCADE;
COMMIT;  

