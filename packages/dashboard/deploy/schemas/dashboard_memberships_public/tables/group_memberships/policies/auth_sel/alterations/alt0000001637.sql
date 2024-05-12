-- Deploy: schemas/dashboard_memberships_public/tables/group_memberships/policies/auth_sel/alterations/alt0000001637 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_memberships_public/schema
-- requires: schemas/dashboard_memberships_public/tables/group_memberships/table

BEGIN;
ALTER POLICY auth_sel ON "dashboard_memberships_public".group_memberships TO authenticated USING ( (is_admin = FALSE AND entity_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".group_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000000000000001') = '00000000000000000000000000000001')) OR is_admin = TRUE );
COMMIT;
