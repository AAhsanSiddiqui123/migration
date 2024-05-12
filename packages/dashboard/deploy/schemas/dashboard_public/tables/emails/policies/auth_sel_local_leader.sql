-- Deploy schemas/dashboard_public/tables/emails/policies/auth_sel_local_leader to pg

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/emails/table
-- requires: schemas/dashboard_public/tables/emails/policies/enable_row_level_security

BEGIN;

CREATE POLICY auth_sel_local_leader ON dashboard_public.emails
  FOR SELECT
  TO authenticated
  USING (
     owner_id IN
     (
SELECT entity.actor_id  FROM dashboard_memberships_private.group_memberships_acl actor  
Join dashboard_memberships_private.group_memberships_acl entity ON actor.entity_id=entity.entity_id
WHERE actor.actor_id=jwt_public.current_user_id() AND actor.is_owner=true
)
  );




COMMIT;
