-- Revert: schemas/dashboard_public/tables/user_actions/grants/authenticated/update/grant/alterations/alt0000001378 from pg

BEGIN;
REVOKE UPDATE ( object_id, user_rating, rejected, user_rating, action_started, items_updated, complete, location ) ON TABLE "dashboard_public".user_actions FROM authenticated;
COMMIT;  

