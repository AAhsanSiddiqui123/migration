-- Revert: schemas/dashboard_public/tables/user_questions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_questions FROM authenticated;
COMMIT;  

