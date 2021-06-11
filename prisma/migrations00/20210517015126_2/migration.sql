/*
  Warnings:

  - A unique constraint covering the columns `[bill_name]` on the table `Bill` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Bill.bill_name_unique" ON "Bill"("bill_name");
