-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_memberships_public".membership_defaults FROM authenticated;
COMMIT;  

