-- Deploy: schemas/dashboard_public/tables/post_reactions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".post_reactions TO authenticated;
COMMIT;
