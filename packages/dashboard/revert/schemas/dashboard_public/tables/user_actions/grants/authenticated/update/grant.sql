-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/update/grant from pg

BEGIN;
REVOKE UPDATE ( user_rating, rejected, complete, location ) ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

