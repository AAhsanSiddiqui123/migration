-- Deploy: schemas/dashboard_public/tables/user_action_verifications/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_verifications/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".user_action_verifications TO authenticated;
COMMIT;
