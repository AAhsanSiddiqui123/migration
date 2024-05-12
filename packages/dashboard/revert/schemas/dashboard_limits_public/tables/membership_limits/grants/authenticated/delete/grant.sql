-- Revert: schemas/dashboard_limits_public/tables/membership_limits/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_limits_public".membership_limits FROM authenticated;
COMMIT;  

