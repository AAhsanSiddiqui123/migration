-- Revert: schemas/dashboard_invites_public/tables/invites/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_invites_public".invites FROM authenticated;
COMMIT;  

