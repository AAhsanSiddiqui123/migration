-- Deploy: schemas/dashboard_public/tables/user_viewed_actions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_viewed_actions/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".user_viewed_actions TO authenticated;
COMMIT;
