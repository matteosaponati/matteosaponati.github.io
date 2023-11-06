---
layout: splash
title: vita and cv
permalink: /cv/
author_profile: false
---


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chronological List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .timeline {
            list-style: none;
            padding: 0;
            margin: 0;
            position: relative;
        }
        .timeline li {
            width: 50%;
            padding: 20px;
            position: relative;
        }
        .timeline li::before {
            content: "";
            position: absolute;
            top: 0;
            bottom: 0;
            left: 50%;
            width: 2px;
            background: #8a2be2; /* Purple Color */
        }
        .timeline li:first-child::before {
            top: 50px;
        }
        .timeline li:last-child::before {
            bottom: 50px;
        }
        .timeline li:first-child {
            padding-top: 50px;
        }
        .timeline li:last-child {
            padding-bottom: 50px;
        }
        .timeline li div {
            position: relative;
            background: #8a2be2; /* Purple Color */
            color: #fff;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .timeline li div::before {
            content: "";
            position: absolute;
            top: 0;
            left: -6px;
            width: 12px;
            height: 12px;
            background: #fff;
            border-radius: 50%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .timeline li div h3 {
            margin: 0;
            font-size: 1.2em;
        }
        .timeline li div p {
            margin: 5px 0 0;
        }
        .timeline li:nth-child(odd) div::before {
            top: calc(100% - 6px);
        }
        .timeline li:nth-child(even) div::before {
            top: -6px;
        }
        .timeline li:nth-child(odd) div {
            left: 0;
        }
        .timeline li:nth-child(even) div {
            right: 0;
        }
    </style>
</head>
<body>

<ul class="timeline">
    <li>
        <div>
            <h3>2018-2020</h3>
            <p>Your Text Here</p>
        </div>
    </li>
    <li>
        <div>
            <h3>2020-2022</h3>
            <p>Your Text Here</p>
        </div>
    </li>
    <li>
        <div>
            <h3>2022-2024</h3>
            <p>Your Text Here</p>
        </div>
    </li>
    <!-- Add more list items as needed -->
</ul>

</body>
</html>