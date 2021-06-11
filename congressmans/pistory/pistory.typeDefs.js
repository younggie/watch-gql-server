import { gql } from "apollo-server";

export default gql`
  type Pistory {
    id: Int!
    create_date: String!
    update_date: String!
    in_date: String
    out_date: String
    note: String
    congressman: Congressman
    party: Party!
  }
`;
