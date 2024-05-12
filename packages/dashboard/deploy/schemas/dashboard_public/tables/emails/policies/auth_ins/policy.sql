-- Deploy: schemas/dashboard_public/tables/emails/policies/auth_ins/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table

BEGIN;
CREATE POLICY auth_ins ON "dashboard_public".emails FOR INSERT TO authenticated WITH CHECK ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000100000000000') = '00000000000000000000100000000000') );
COMMIT;
