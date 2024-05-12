-- Revert: schemas/dashboard_invites_public/tables/member_claimed_invites/columns/sender_id/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".member_claimed_invites DROP COLUMN sender_id;
COMMIT;  

