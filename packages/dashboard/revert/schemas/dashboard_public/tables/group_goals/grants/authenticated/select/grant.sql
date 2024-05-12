-- Revert: schemas/dashboard_public/tables/group_goals/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".group_goals FROM authenticated;
COMMIT;  

