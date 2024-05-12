-- Deploy: schemas/dashboard_public/tables/impacts_conditions/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts_conditions/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".impacts_conditions FOR INSERT TO authenticated WITH CHECK ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000001000000000000000') = '00000000000000001000000000000000') AND impact_id IN (SELECT obj.id FROM "dashboard_memberships_private".memberships_acl AS acl INNER JOIN "dashboard_public".impacts AS obj ON acl.entity_id = obj.owner_id WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000001000000000000000') = '00000000000000001000000000000000') );
COMMIT;
