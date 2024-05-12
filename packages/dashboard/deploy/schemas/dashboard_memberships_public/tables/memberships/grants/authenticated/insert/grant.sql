-- Deploy: schemas/dashboard_memberships_public/tables/memberships/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/memberships/table

BEGIN;
GRANT INSERT ( actor_id, entity_id ) ON TABLE "dashboard_memberships_public".memberships TO authenticated;
COMMIT;
