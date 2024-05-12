-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/expires_at/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites DROP COLUMN expires_at;
COMMIT;  

