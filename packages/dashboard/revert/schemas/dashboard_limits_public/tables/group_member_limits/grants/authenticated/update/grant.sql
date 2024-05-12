-- Revert: schemas/dashboard_limits_public/tables/group_member_limits/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_limits_public".group_member_limits FROM authenticated;
COMMIT;  

