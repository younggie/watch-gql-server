/*
  Warnings:

  - You are about to drop the `Pstory` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Pstory" DROP CONSTRAINT "Pstory_congressmanId_fkey";

-- DropForeignKey
ALTER TABLE "Pstory" DROP CONSTRAINT "Pstory_partyId_fkey";

-- DropTable
DROP TABLE "Pstory";

-- CreateTable
CREATE TABLE "Pistory" (
    "id" SERIAL NOT NULL,
    "note" TEXT,
    "in_date" TEXT NOT NULL,
    "out_date" TEXT NOT NULL,
    "partyId" INTEGER,
    "congressmanId" INTEGER NOT NULL,
    "create_date" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "update_date" TIMESTAMP(3),

    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Pistory" ADD FOREIGN KEY ("partyId") REFERENCES "Party"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pistory" ADD FOREIGN KEY ("congressmanId") REFERENCES "Congressman"("id") ON DELETE CASCADE ON UPDATE CASCADE;
