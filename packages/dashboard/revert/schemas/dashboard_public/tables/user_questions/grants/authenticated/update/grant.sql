-- Revert: schemas/dashboard_public/tables/user_questions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ON TABLE "dashboard_public".user_questions FROM authenticated;
COMMIT;  

