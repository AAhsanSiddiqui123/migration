-- Revert: schemas/dashboard_invites_public/tables/group_claimed_invites/indexes/group_claimed_invites_sender_id_idx from pg

BEGIN;
DROP INDEX "dashboard_invites_public".group_claimed_invites_sender_id_idx;
COMMIT;  

