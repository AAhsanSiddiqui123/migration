-- Deploy: schemas/dashboard_public/tables/group_goals/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_goals/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".group_goals TO authenticated;
COMMIT;
