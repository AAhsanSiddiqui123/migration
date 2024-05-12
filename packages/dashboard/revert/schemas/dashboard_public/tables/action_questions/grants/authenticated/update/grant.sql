-- Revert: schemas/dashboard_public/tables/action_questions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".action_questions FROM authenticated;
COMMIT;  

