-- Revert: schemas/dashboard_public/tables/action_questions/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".action_questions FROM authenticated;
COMMIT;  

