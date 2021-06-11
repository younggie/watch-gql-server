import { gql } from "apollo-server";

export default gql`
  type Congressman {
    id: Int!
    create_date: String!
    update_date: String!
    name: String!
    elect_num: String
    chn_name: String
    eng_name: String
    gender: String
    birth_where: String
    birth_date: String
    email: String
    homepage: String
    bills: [Bill] #resolver field
    party_histories: [Pistory]
    totalLaws: Int # computed field
    current_party: String
  }
`;
