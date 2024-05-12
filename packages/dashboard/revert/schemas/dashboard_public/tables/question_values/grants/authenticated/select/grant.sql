-- Revert: schemas/dashboard_public/tables/question_values/grants/authenticated/select/grant from pg

BEGIN;
REVOKE SELECT ON TABLE "dashboard_public".question_values FROM authenticated;
COMMIT;  

