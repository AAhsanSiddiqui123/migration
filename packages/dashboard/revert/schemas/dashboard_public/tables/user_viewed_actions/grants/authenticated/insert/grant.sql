-- Revert: schemas/dashboard_public/tables/user_viewed_actions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ON TABLE "dashboard_public".user_viewed_actions FROM authenticated;
COMMIT;  

