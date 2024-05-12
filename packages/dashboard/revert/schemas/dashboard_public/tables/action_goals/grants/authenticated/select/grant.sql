-- Revert: schemas/dashboard_public/tables/action_goals/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_goals FROM authenticated;
COMMIT;  

