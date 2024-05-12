-- Revert: schemas/dashboard_invites_public/tables/invites/indexes/invites_sender_id_idx from pg

BEGIN;
DROP INDEX "dashboard_invites_public".invites_sender_id_idx;
COMMIT;  

