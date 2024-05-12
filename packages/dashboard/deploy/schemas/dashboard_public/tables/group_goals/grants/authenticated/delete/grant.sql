-- Deploy: schemas/dashboard_public/tables/group_goals/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".group_goals TO authenticated;
COMMIT;
