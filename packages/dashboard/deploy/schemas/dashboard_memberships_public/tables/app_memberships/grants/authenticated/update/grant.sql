-- Deploy: schemas/dashboard_memberships_public/tables/app_memberships/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/app_memberships/table

BEGIN;
GRANT UPDATE ( is_banned, is_approved, is_verified, is_disabled, granted ) ON TABLE "dashboard_memberships_public".app_memberships TO authenticated;
COMMIT;
