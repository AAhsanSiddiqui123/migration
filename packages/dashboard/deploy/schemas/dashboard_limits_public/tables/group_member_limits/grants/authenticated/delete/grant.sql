-- Deploy: schemas/dashboard_limits_public/tables/group_member_limits/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limits/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_limits_public".group_member_limits TO authenticated;
COMMIT;
