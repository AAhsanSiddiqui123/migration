-- Revert: schemas/dashboard_invites_public/tables/invites/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_invites_public".invites FROM authenticated;
COMMIT;  

