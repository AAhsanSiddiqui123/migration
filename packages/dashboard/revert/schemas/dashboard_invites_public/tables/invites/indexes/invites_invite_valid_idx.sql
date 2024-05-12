-- Revert: schemas/dashboard_invites_public/tables/invites/indexes/invites_invite_valid_idx from pg

BEGIN;
DROP INDEX "dashboard_invites_public".invites_invite_valid_idx;
COMMIT;  

