# PROJ-10 – Disaster Logistics Planning System
 **Course Project:** PROJ-10  
 **Group:** Group11  
 **Language:** C++  
 **Constraints:** Core data structures implemented without STL
 ---
 ## 1.  Project Overview
 This project implements a disaster logistics planning system designed to distribute emergency supplies from warehouses to shelters and hospitals.
 The system:
 - Loads a disaster scenario from a JSON input file
 - Models the environment as a graph with road conditions
 - Computes shortest travel times using a modified Dijkstra algorithm
 - Prioritizes deliveries based on urgency
 - Simulates truck-based supply distribution
 - Reports unmet demand when supplies are insufficient
 All planning and outputs are produced via a console-based interface.
 ---
 ## 2.  Build, Run, and Test
 ### Build
 ```bash
 make
