-- Deploy: schemas/dashboard_limits_public/tables/membership_limits/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/membership_limits/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_limits_public".membership_limits TO authenticated;
COMMIT;
