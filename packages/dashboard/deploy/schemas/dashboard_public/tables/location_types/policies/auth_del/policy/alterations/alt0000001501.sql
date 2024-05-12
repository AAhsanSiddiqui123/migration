-- Deploy: schemas/dashboard_public/tables/location_types/policies/auth_del/policy/alterations/alt0000001501 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/location_types/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".location_types FOR DELETE TO authenticated USING ( EXISTS (SELECT 1 FROM "dashboard_memberships_private".app_memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000000000000001000000000') = '00000000000000000000001000000000') );
COMMIT;
