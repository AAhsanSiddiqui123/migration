-- Deploy: schemas/dashboard_public/tables/group_post_comments/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".group_post_comments TO authenticated;
COMMIT;
