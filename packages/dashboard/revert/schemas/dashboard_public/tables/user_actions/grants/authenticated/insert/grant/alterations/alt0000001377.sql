-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/alt0000001377 from pg

BEGIN;
REVOKE INSERT ( user_id, action_id, object_id, user_rating, action_started, complete, location ) ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

