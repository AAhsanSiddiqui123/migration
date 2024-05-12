-- Deploy: schemas/dashboard_public/tables/group_posts/policies/auth_del/policy to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;
CREATE POLICY auth_del ON "dashboard_public".group_posts FOR DELETE TO authenticated USING ( poster_id = jwt_public.current_user_id() );
COMMIT;
