-- Revert: schemas/dashboard_invites_public/tables/group_invites/indexes/group_invites_expires_at_idx from pg

BEGIN;
DROP INDEX "dashboard_invites_public".group_invites_expires_at_idx;
COMMIT;  

