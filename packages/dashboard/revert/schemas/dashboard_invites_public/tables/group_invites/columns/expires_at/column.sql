-- Revert: schemas/dashboard_invites_public/tables/group_invites/columns/expires_at/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_invites DROP COLUMN expires_at;
COMMIT;  

