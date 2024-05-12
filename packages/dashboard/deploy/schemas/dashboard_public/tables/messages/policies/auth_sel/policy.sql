-- Deploy: schemas/dashboard_public/tables/messages/policies/auth_sel/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;
CREATE POLICY auth_sel ON "dashboard_public".messages FOR SELECT TO authenticated USING ( (SELECT jwt_public.current_user_id() = ANY( p.member_ids ) FROM "dashboard_public".message_groups AS p WHERE p.id = group_id) );
COMMIT;
