-- Revert: schemas/dashboard_public/tables/user_saved_actions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_saved_actions FROM authenticated;
COMMIT;  

