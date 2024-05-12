-- Deploy: schemas/dashboard_public/tables/post_reactions/columns/poster_id/alterations/alt0000001078 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table
-- requires: schemas/dashboard_public/tables/post_reactions/columns/poster_id/column

BEGIN;

ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN poster_id SET DEFAULT uuid_nil();
COMMIT;
