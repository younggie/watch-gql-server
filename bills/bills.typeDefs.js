import { gql } from "apollo-server";

export default gql`
  type Bill {
    id: Int!
    bill_no: String!
    bill_kind: String
    bill_name: String!
    who: String
    bill_class: String
    bill_date: String
    committee: String
    comm_seq: Int
    bill_result: String
    match_url: String
    createdAt: String!
    updatedAt: String!
  }
`;
