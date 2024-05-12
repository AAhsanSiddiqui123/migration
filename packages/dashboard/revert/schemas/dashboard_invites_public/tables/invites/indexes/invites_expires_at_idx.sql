-- Revert: schemas/dashboard_invites_public/tables/invites/indexes/invites_expires_at_idx from pg

BEGIN;
DROP INDEX "dashboard_invites_public".invites_expires_at_idx;
COMMIT;  

