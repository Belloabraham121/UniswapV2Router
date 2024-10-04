import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const SimpleLudoModule = buildModule("SimpleLudoModule", (m) => {

  const player1 = "0x4AF79fFCaBb09083aF6CcC3b2C20Fe989519f6d7"
  const player2 = "0x6b4DF334368b09f87B3722449703060EEf284126"
  const player3 = "0x7Ad53bbA1004e46dd456316912D55dBc5D311a03"
  const player4 = "0x4F773f3FC89b73B34FB57EBc667a245D5e3812F6"

  const SimpleLudo = m.contract("SimpleLudo", [player1, player2, player3, player4]);

  return { SimpleLudo };
});

export default SimpleLudoModule;
