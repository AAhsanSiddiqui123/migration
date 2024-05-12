-- Deploy schemas/dashboard_public/tables/app_constants/grants/grant_select_to_anonymous to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;

-- TODO make sure to require any policies on this table!

GRANT SELECT ON TABLE dashboard_public.app_constants TO anonymous;

COMMIT;
