-- Deploy: schemas/dashboard_public/tables/post_reactions/columns/id/alterations/alt0000001068 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table
-- requires: schemas/dashboard_public/tables/post_reactions/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
