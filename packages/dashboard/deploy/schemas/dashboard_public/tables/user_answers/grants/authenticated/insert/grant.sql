-- Deploy: schemas/dashboard_public/tables/user_answers/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".user_answers TO authenticated;
COMMIT;
