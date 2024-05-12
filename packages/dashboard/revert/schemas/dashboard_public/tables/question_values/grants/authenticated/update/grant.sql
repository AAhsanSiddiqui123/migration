-- Revert: schemas/dashboard_public/tables/question_values/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".question_values FROM authenticated;
COMMIT;  

