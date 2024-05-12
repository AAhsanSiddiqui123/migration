-- Revert: schemas/dashboard_memberships_public/tables/memberships/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_memberships_public".memberships FROM authenticated;
COMMIT;  

