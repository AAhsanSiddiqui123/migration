-- Revert: schemas/dashboard_invites_public/tables/member_claimed_invites/indexes/member_claimed_invites_sender_id_idx from pg

BEGIN;
DROP INDEX "dashboard_invites_public".member_claimed_invites_sender_id_idx;
COMMIT;  

