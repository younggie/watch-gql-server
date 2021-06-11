import { gql } from "apollo-server";

export default gql`
  type Party {
    id: Int!
    create_date: String!
    update_date: String!
    name: String!
    note: String
    inuse: Boolean
  }
`;
