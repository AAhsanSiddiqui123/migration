-- Deploy: schemas/dashboard_public/tables/goal_explanations/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".goal_explanations TO authenticated;
COMMIT;
