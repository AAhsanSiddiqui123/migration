-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant from pg

BEGIN;
REVOKE INSERT ( user_id, action_id, user_rating, complete, location ) ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

