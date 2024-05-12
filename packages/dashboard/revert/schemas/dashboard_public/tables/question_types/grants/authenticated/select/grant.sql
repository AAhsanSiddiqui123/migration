-- Revert: schemas/dashboard_public/tables/question_types/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".question_types FROM authenticated;
COMMIT;  

