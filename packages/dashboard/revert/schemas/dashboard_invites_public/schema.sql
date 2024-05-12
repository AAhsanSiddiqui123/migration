-- Revert: schemas/dashboard_invites_public/schema from pg

BEGIN;


DROP SCHEMA IF EXISTS "dashboard_invites_public" CASCADE;
COMMIT;  

