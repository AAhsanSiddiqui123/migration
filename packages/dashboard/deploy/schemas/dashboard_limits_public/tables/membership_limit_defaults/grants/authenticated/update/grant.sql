-- Deploy: schemas/dashboard_limits_public/tables/membership_limit_defaults/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limit_defaults/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_limits_public".membership_limit_defaults TO authenticated;
COMMIT;
