-- Revert: schemas/dashboard_public/tables/action_questions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".action_questions FROM authenticated;
COMMIT;  

