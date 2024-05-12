-- Revert: schemas/dashboard_public/tables/action_questions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".action_questions FROM authenticated;
COMMIT;  

