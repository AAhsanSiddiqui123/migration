-- Deploy: schemas/dashboard_public/tables/user_pass_actions/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_pass_actions/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".user_pass_actions TO authenticated;
COMMIT;
