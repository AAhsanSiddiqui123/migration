-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_limits_public".group_member_limits FROM authenticated;
COMMIT;  

