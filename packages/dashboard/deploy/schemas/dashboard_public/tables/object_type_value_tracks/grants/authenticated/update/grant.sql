-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".object_type_value_tracks TO authenticated;
COMMIT;
