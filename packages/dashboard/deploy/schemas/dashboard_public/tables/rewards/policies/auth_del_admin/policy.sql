-- Deploy: schemas/dashboard_public/tables/rewards/policies/auth_del_admin/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/rewards/table

BEGIN;
CREATE POLICY auth_del_admin ON "dashboard_public".rewards FOR DELETE TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000100000000000000000') = '00000000000000100000000000000000') );
COMMIT;
