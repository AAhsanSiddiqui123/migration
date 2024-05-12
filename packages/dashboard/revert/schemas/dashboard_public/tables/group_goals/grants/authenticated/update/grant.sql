-- Revert: schemas/dashboard_public/tables/group_goals/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".group_goals FROM authenticated;
COMMIT;  

