-- Revert: schemas/dashboard_invites_public/tables/group_claimed_invites/columns/receiver_id/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".group_claimed_invites DROP COLUMN receiver_id;
COMMIT;  

