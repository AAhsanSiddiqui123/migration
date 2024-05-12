-- Revert: schemas/dashboard_public/tables/action_goals/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_goals FROM authenticated;
COMMIT;  

