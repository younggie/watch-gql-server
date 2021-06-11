import client from "../../client";

export default {
  Query: {
    billList: async (_, { page }) => {
      const bills = await client.bill.findMany({
        take: 10,
        skip: (page - 1) * 10,
        orderBy: {
          id: "desc",
        },
      });
      return {
        ok: true,
        bills,
      };
    },
  },
};
