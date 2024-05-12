-- Revert: schemas/dashboard_public/tables/user_questions/grants/authenticated/delete/grant from pg

BEGIN;
REVOKE DELETE ON TABLE "dashboard_public".user_questions FROM authenticated;
COMMIT;  

