-- Revert: schemas/dashboard_public/tables/group_post_comments/constraints/group_post_comments_commenter_id_fkey/alterations/alt0000001124 from pg

BEGIN;
COMMENT ON CONSTRAINT group_post_comments_commenter_id_fkey ON "dashboard_public".group_post_comments IS NULL;
COMMIT;  

