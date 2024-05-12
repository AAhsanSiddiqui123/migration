-- Deploy: schemas/dashboard_public/tables/group_posts/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".group_posts TO authenticated;
COMMIT;
