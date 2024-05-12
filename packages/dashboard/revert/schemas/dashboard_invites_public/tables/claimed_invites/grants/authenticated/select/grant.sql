-- Revert: schemas/dashboard_invites_public/tables/claimed_invites/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_invites_public".claimed_invites FROM authenticated;
COMMIT;  

