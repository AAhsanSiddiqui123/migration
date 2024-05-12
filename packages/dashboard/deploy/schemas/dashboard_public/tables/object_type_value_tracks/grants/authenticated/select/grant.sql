-- Deploy: schemas/dashboard_public/tables/object_type_value_tracks/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/object_type_value_tracks/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".object_type_value_tracks TO authenticated;
COMMIT;
