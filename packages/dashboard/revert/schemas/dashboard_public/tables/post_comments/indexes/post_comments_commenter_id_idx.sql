-- Revert: schemas/dashboard_public/tables/post_comments/indexes/post_comments_commenter_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".post_comments_commenter_id_idx;
COMMIT;  

