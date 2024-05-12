-- Revert: schemas/dashboard_public/tables/group_post_comments/indexes/group_post_comments_commenter_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".group_post_comments_commenter_id_idx;
COMMIT;  

