-- Deploy: schemas/dashboard_public/tables/user_characteristics/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_characteristics/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".user_characteristics TO authenticated;
COMMIT;
