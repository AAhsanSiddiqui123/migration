-- Revert: schemas/dashboard_public/tables/post_comments/constraints/post_comments_parent_id_fkey/alterations/alt0000001090 from pg

BEGIN;
COMMENT ON CONSTRAINT post_comments_parent_id_fkey ON "dashboard_public".post_comments IS NULL;
COMMIT;  

