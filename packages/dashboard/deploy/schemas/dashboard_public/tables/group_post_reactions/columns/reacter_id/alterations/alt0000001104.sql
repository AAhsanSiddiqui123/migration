-- Deploy: schemas/dashboard_public/tables/group_post_reactions/columns/reacter_id/alterations/alt0000001104 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_reactions/table
-- requires: schemas/dashboard_public/tables/group_post_reactions/columns/reacter_id/column

BEGIN;

ALTER TABLE "dashboard_public".group_post_reactions 
    ALTER COLUMN reacter_id SET NOT NULL;
COMMIT;
