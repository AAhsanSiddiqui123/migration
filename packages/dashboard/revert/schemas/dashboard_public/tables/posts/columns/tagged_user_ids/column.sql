-- Revert: schemas/dashboard_public/tables/posts/columns/tagged_user_ids/column from pg

BEGIN;


ALTER TABLE "dashboard_public".posts DROP COLUMN tagged_user_ids;
COMMIT;  

