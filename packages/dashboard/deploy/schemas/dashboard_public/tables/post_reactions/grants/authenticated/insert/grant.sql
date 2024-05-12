-- Deploy: schemas/dashboard_public/tables/post_reactions/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".post_reactions TO authenticated;
COMMIT;
