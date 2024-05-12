-- Revert: schemas/dashboard_public/tables/question_types/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".question_types FROM authenticated;
COMMIT;  

