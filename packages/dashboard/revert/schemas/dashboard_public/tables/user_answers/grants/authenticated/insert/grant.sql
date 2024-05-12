-- Revert: schemas/dashboard_public/tables/user_answers/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_answers FROM authenticated;
COMMIT;  

