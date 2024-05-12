-- Deploy: schemas/dashboard_public/tables/track_locations/alterations/alt0000001618 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_locations/table

BEGIN;

ALTER TABLE "dashboard_public".track_locations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
