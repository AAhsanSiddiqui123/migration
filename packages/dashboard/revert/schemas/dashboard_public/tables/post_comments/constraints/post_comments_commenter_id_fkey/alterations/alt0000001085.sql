-- Revert: schemas/dashboard_public/tables/post_comments/constraints/post_comments_commenter_id_fkey/alterations/alt0000001085 from pg

BEGIN;
COMMENT ON CONSTRAINT post_comments_commenter_id_fkey ON "dashboard_public".post_comments IS NULL;
COMMIT;  

