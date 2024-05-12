-- Revert: schemas/dashboard_invites_public/tables/member_invites/indexes/member_invites_expires_at_idx from pg

BEGIN;
DROP INDEX "dashboard_invites_public".member_invites_expires_at_idx;
COMMIT;  

