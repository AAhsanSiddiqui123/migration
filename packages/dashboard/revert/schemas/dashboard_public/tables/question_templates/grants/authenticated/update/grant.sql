-- Revert: schemas/dashboard_public/tables/question_templates/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".question_templates FROM authenticated;
COMMIT;  

