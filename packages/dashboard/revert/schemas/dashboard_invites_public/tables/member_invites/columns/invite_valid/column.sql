-- Revert: schemas/dashboard_invites_public/tables/member_invites/columns/invite_valid/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_invites DROP COLUMN invite_valid;
COMMIT;  

