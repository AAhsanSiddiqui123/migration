-- Revert: schemas/dashboard_public/tables/question_templates/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".question_templates FROM authenticated;
COMMIT;  

