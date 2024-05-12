-- Revert: schemas/dashboard_public/tables/posts/alterations/alt0000001060 from pg

BEGIN;


ALTER TABLE "dashboard_public".posts
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

