-- Deploy: schemas/dashboard_public/tables/user_actions/grants/authenticated/insert/grant/alterations/alt0000001377 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;
GRANT INSERT ( user_id, action_id, object_id, user_rating, action_started, complete, location ) ON TABLE "dashboard_public".user_actions TO authenticated;
COMMIT;
