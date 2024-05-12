-- Deploy: schemas/dashboard_public/tables/track_groups/columns/id/alterations/alt0000001628 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table
-- requires: schemas/dashboard_public/tables/track_groups/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".track_groups 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
