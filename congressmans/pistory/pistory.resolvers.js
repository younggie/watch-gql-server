import client from "../../client";

export default {
  Pistory: {
    party: ({ partyId }) => {
      const party = client.party.findFirst({
        where: {
          id: partyId,
        },
      });
      return party;
    },
  },
};
