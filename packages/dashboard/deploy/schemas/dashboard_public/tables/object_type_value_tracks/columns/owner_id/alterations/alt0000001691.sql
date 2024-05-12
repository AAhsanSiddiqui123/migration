-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/columns/owner_id/alterations/alt0000001691 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".object_type_value_tracks 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
