-- Deploy: schemas/dashboard_public/tables/user_action_reactions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".user_action_reactions TO authenticated;
COMMIT;
