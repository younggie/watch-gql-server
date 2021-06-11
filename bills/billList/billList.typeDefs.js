import { gql } from "apollo-server";

export default gql`
  type billListResult {
    bills: [Bill]
    ok: Boolean!
    error: String
  }

  type Query {
    billList(page: Int): billListResult
  }
`;
