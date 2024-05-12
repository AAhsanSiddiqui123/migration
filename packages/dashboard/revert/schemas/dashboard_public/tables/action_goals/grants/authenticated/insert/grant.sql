-- Revert: schemas/dashboard_public/tables/action_goals/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_goals FROM authenticated;
COMMIT;  

