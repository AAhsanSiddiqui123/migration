-- Revert: schemas/dashboard_public/tables/group_post_comments/triggers/_000000000_ensure_insert_post_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_post_id ON "dashboard_public".group_post_comments;
COMMIT;  

