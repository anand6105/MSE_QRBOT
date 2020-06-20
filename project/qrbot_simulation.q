//This file was generated from (Academic) UPPAAL 4.1.24 (rev. 29A3ECA4E5FB0808), November 2019

/*
\/* Ensure that the system is deadlock free *\/
*/
A[] not deadlock

/*
\/* The Follower does not reach the inspection area unless instructed by leader *\/
*/
A[] not (leader0.survey and follower1.target_area)

/*
\/* The follower bot must scan and send data within 60 sec *\/
*/
A[] not (sc1.send_data and sc1.t > 60)

/*

*/
E<> follower1.health_data

/*
\/* The follower bot must be at the target area for 70 seconds *\/
*/
A[] follower1.target_area imply follower1.t <= 70

/*
\/* Check if the a survey leads to identifying the survey area *\/
*/
leader0.survey --> c0.ready
