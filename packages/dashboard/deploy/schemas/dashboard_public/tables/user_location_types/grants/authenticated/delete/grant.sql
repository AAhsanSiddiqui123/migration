-- Deploy: schemas/dashboard_public/tables/user_location_types/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_location_types/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".user_location_types TO authenticated;
COMMIT;
