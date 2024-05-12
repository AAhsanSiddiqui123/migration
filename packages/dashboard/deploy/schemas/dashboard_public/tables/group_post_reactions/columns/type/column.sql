-- Deploy: schemas/dashboard_public/tables/group_post_reactions/columns/type/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".group_post_reactions ADD COLUMN type text;
COMMIT;
