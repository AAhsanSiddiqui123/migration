-- Revert: schemas/dashboard_public/tables/question_templates/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".question_templates FROM authenticated;
COMMIT;  

