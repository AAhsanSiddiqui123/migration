-- Revert: schemas/dashboard_limits_public/tables/membership_limits/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_limits_public".membership_limits FROM authenticated;
COMMIT;  

