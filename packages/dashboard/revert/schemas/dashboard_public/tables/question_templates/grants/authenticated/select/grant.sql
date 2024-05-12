-- Revert: schemas/dashboard_public/tables/question_templates/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".question_templates FROM authenticated;
COMMIT;  

