-- Deploy dashboard:schemas/dashboard_public/tables/groups/policies/auth_upd/policy_v2 to pg

BEGIN;

DROP POLICY IF EXISTS auth_upd ON "dashboard_public".groups;

CREATE POLICY auth_upd ON "dashboard_public".groups FOR UPDATE TO authenticated USING 
( 
     
            ((EXISTS (SELECT 1 FROM dashboard_memberships_private.group_memberships_acl acl  WHERE (acl.entity_id=id and acl.actor_id = jwt_public.current_user_id() AND is_owner=true)))
            OR 
            (EXISTS (SELECT 1 FROM dashboard_memberships_private.group_memberships_acl acl  WHERE  (acl.entity_id=id and acl.actor_id = jwt_public.current_user_id() AND ((acl.permissions & '00000000000000000000001000000000'::"bit") = '00000000000000000000001000000000'::"bit")) )))
        
);

COMMIT;
