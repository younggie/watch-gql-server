/*
  Warnings:

  - You are about to drop the `PartyHistory` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "PartyHistory" DROP CONSTRAINT "PartyHistory_congressmanId_fkey";

-- DropForeignKey
ALTER TABLE "PartyHistory" DROP CONSTRAINT "PartyHistory_partyId_fkey";

-- DropTable
DROP TABLE "PartyHistory";

-- CreateTable
CREATE TABLE "Partyhistory" (
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
ALTER TABLE "Partyhistory" ADD FOREIGN KEY ("partyId") REFERENCES "Party"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Partyhistory" ADD FOREIGN KEY ("congressmanId") REFERENCES "Congressman"("id") ON DELETE CASCADE ON UPDATE CASCADE;
