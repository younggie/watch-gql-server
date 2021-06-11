import client from "../../client";

export default {
  Query: {
    congressmanList: (_, { page }) => {
      const perPage = 20;
      const congressmans = client.congressman.findMany({
        take: perPage,
        skip: (page - 1) * perPage,
        orderBy: {
          name: "asc",
        },
      });
      return {
        ok: true,
        congressmans,
      };
    },
  },
};
