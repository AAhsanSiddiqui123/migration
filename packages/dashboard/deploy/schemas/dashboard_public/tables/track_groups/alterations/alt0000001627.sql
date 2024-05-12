-- Deploy: schemas/dashboard_public/tables/track_groups/alterations/alt0000001627 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table

BEGIN;

ALTER TABLE "dashboard_public".track_groups
    DISABLE ROW LEVEL SECURITY;
COMMIT;
