-- Deploy: schemas/dashboard_limits_public/tables/group_member_limit_defaults/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/group_member_limit_defaults/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_limits_public".group_member_limit_defaults TO authenticated;
COMMIT;
