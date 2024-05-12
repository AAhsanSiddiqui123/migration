-- Revert: schemas/dashboard_public/tables/question_values/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".question_values FROM authenticated;
COMMIT;  

