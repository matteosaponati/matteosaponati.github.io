---
layout: splash
title: cv
permalink: /cv/
author_profile: false
---
<!DOCTYPE html>
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
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
            position: relative;
        }
        .timeline li::before {
            content: "";
            position: absolute;
            top: 0;
            left: 50%;
            width: 2px;
            height: 100%;
            background: #8a2be2; /* Purple Color */
            z-index: -1;
        }
        .timeline li:first-child::before {
            top: 50px;
        }
        .timeline li:last-child::before {
            bottom: 50px;
        }
        .timeline li div {
            width: 45%;
            padding: 15px;
            background: #8a2be2; /* Purple Color */
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            color: #000; /* Black Text Color */
        }
        .timeline li div::before {
            content: "";
            position: absolute;
            top: 50%;
            left: -6px;
            width: 12px;
            height: 12px;
            background: #8a2be2; /* Purple Color */
            border-radius: 50%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .timeline li div h3 {
            margin: 0;
            font-size: 1.2em;
            color: #8a2be2; /* Purple Color */
        }
        .timeline li div p {
            margin: 5px 0 0;
        }
        .timeline li:nth-child(odd) div::before {
            left: -6px;
        }
        .timeline li:nth-child(even) div::before {
            right: -6px;
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
