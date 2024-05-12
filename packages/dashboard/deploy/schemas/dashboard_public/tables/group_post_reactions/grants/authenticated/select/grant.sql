-- Deploy: schemas/dashboard_public/tables/group_post_reactions/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_reactions/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".group_post_reactions TO authenticated;
COMMIT;
