-- Deploy: schemas/dashboard_public/tables/posts/columns/poster_id/alterations/alt0000001064 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table
-- requires: schemas/dashboard_public/tables/posts/columns/poster_id/column

BEGIN;

ALTER TABLE "dashboard_public".posts 
    ALTER COLUMN poster_id SET DEFAULT jwt_public.current_user_id();
COMMIT;
