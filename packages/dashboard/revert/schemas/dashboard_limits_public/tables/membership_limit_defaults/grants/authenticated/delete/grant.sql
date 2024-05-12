-- Revert: schemas/dashboard_limits_public/tables/membership_limit_defaults/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_limits_public".membership_limit_defaults FROM authenticated;
COMMIT;  

