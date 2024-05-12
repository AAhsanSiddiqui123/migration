-- Revert: schemas/dashboard_public/tables/user_answers/policies/auth_sel_admin/alterations/alt0000001340 from pg

BEGIN;
ALTER POLICY auth_sel_admin ON "dashboard_public".user_answers TO authenticated USING ( owner_id IN (SELECT acl.entity_id FROM "dashboard_memberships_private".memberships_acl AS acl WHERE acl.actor_id = jwt_public.current_user_id() AND (acl.permissions & '00000000000100000000000000000000') = '00000000000100000000000000000000') );
COMMIT;  

