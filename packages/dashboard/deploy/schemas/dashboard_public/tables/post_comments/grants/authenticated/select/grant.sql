-- Deploy: schemas/dashboard_public/tables/post_comments/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".post_comments TO authenticated;
COMMIT;
