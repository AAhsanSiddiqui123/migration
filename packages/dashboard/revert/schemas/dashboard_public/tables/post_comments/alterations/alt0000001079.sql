-- Revert: schemas/dashboard_public/tables/post_comments/alterations/alt0000001079 from pg

BEGIN;


ALTER TABLE "dashboard_public".post_comments
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

