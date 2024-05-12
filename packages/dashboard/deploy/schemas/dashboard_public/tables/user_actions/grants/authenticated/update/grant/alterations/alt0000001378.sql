-- Deploy: schemas/dashboard_public/tables/user_actions/grants/authenticated/update/grant/alterations/alt0000001378 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;
GRANT UPDATE ( object_id, user_rating, rejected, user_rating, action_started, items_updated, complete, location ) ON TABLE "dashboard_public".user_actions TO authenticated;
COMMIT;
