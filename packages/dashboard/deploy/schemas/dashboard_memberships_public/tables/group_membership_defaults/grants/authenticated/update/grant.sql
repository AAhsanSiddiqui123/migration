-- Deploy: schemas/dashboard_memberships_public/tables/group_membership_defaults/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_membership_defaults/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_memberships_public".group_membership_defaults TO authenticated;
COMMIT;
