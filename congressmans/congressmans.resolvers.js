import { join } from "@prisma/client/runtime";
import client from "../client";

export default {
  Congressman: {
    totalLaws: ({ id }) => {
      const totalLaws = client.bill.count({
        where: {
          congressmanId: id,
        },
      });
      console.log("----");
      console.log(totalLaws);
      return totalLaws;
    },
    bills: ({ id }) => {
      const bills = client.bill.findMany({
        where: {
          congressmanId: id,
        },
      });
      return bills;
    },
    party_histories: async ({ id }) => {
      const history = await client.pistory.findMany({
        where: {
          congressmanId: id,
        },
      });

      return history;
    },
    current_party: async ({ id }) => {
      const partido = await client.pistory.findFirst({
        where: {
          congressmanId: id,
        },
        orderBy: {
          in_date: "desc",
        },
      });
      //console.log(partido.partyId);
      const party_id = partido.partyId;

      const party_name = client.party.findFirst({
        where: {
          id: party_id,
        },
      });
      return (await party_name).name;
    },
  },
};
