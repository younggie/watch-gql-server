/*
  Warnings:

  - You are about to drop the `Partyhistory` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Partyhistory" DROP CONSTRAINT "Partyhistory_congressmanId_fkey";

-- DropForeignKey
ALTER TABLE "Partyhistory" DROP CONSTRAINT "Partyhistory_partyId_fkey";

-- DropTable
DROP TABLE "Partyhistory";

-- CreateTable
CREATE TABLE "Pstory" (
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
ALTER TABLE "Pstory" ADD FOREIGN KEY ("partyId") REFERENCES "Party"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Pstory" ADD FOREIGN KEY ("congressmanId") REFERENCES "Congressman"("id") ON DELETE CASCADE ON UPDATE CASCADE;
