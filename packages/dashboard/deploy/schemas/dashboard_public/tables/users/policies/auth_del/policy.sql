-- Deploy: schemas/dashboard_public/tables/users/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".users FOR DELETE TO authenticated USING ( id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND acl.is_owner IS TRUE) );
COMMIT;
