-- Revert: schemas/dashboard_invites_public/tables/invites/columns/expires_at/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".invites DROP COLUMN expires_at;
COMMIT;  

