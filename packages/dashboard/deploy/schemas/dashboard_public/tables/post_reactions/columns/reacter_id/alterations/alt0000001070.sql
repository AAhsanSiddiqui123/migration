-- Deploy: schemas/dashboard_public/tables/post_reactions/columns/reacter_id/alterations/alt0000001070 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table
-- requires: schemas/dashboard_public/tables/post_reactions/columns/reacter_id/column

BEGIN;

ALTER TABLE "dashboard_public".post_reactions 
    ALTER COLUMN reacter_id SET NOT NULL;
COMMIT;
