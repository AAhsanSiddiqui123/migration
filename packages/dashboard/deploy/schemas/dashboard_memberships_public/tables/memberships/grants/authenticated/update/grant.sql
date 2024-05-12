-- Deploy: schemas/dashboard_memberships_public/tables/memberships/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;
GRANT UPDATE ( is_banned, is_approved, is_disabled, granted ) ON TABLE "dashboard_memberships_public".memberships TO authenticated;
COMMIT;
