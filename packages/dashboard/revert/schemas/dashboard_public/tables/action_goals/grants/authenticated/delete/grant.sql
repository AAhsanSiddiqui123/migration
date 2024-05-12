-- Revert: schemas/dashboard_public/tables/action_goals/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_goals FROM authenticated;
COMMIT;  

