-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/alterations/alt0000001684 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks
    DISABLE ROW LEVEL SECURITY;
COMMIT;
