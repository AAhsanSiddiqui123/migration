-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/columns/receiver_id/column from pg

BEGIN;


ALTER TABLE "dashboard_invites_public".claimed_invites DROP COLUMN receiver_id;
COMMIT;  

