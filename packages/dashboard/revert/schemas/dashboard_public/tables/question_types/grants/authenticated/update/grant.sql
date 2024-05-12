-- Revert: schemas/dashboard_public/tables/question_types/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".question_types FROM authenticated;
COMMIT;  

