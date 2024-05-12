-- Revert: schemas/dashboard_invites_public/tables/invites/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( email, expires_at, multiple, invite_limit ) ON TABLE "dashboard_invites_public".invites FROM authenticated;
COMMIT;  

