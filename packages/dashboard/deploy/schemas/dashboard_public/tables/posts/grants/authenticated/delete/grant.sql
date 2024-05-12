-- Deploy: schemas/dashboard_public/tables/posts/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".posts TO authenticated;
COMMIT;
