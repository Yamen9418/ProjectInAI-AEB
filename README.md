# Project In AI 
# Generating Critical Driving Scenarios Using Optimization To Test Autonomous Emergency Braking System (AEBS)

# Abstract
Automated driving systems are becoming increasingly complex, making it essential that they are tested thoroughly before being deployed. To ensure the safety and reliability of autonomous driving systems, testing is vital, however identifying effective test scenarios is notoriously difficult, especially for the critical scenarios that may lead to collisions or near-collisions. My research focuses on autonomous emergency braking system (AEBS) and uses optimization to generate critical driving scenarios using a multi-objective self-adapting algorithm (pilOPT) and a supplemental tool (modeFrontier). The results show that none of the 26 driving scenarios imported from Euro NCAP detected any failure. As I continued the testing through optimization using the pilOPT algorithm, a bug was found in modeFrontier as well as a faulty behavior in AEBS. A workaround was provided by the modeFrontier team after I reported the bug to them, but I was not able to test it due to the time constraints for this study. This research provides a strong case for integrating optimization with regression testing to uncover defects and misbehavior in the AEBS. 


![AEB](https://user-images.githubusercontent.com/65445812/170839197-42bf5ff0-d6fd-44ae-bca0-83c62aa7e136.png)


![AEBTestBench](https://user-images.githubusercontent.com/65445812/170839264-f3bb7d3f-0f91-4b89-9d33-cf3450c20217.png)


![collision](https://user-images.githubusercontent.com/65445812/170839265-d78dfc3e-b89f-4240-910e-dd5c92dd1e9a.png)


![scenario23](https://user-images.githubusercontent.com/65445812/170839266-b829ff18-4cd5-46fc-ab31-7c99a05343a9.png)


![VirtualDashboard](https://user-images.githubusercontent.com/65445812/170839267-e66ba73b-f66f-4dc2-a1e2-82d4cda8dd7c.png)


![Screenshot from 2022-05-29 13-32-28](https://user-images.githubusercontent.com/65445812/170865909-44bce48a-8e71-4046-931e-68ba0c6ebd6a.png)
