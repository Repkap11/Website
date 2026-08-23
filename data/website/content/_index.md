---
date: "2026-07-08T23:21:54-04:00"
draft: false
title: "Hi, I'm Paul Repka"
---

I'm <span id="paul_age"></span> years old and live in Rochester NY.

I enjoy traveling, looking at space through my telescope, playing video games, and programming.

I have a <span id="felix_age"></span> year old cat named Felix. He's a good boy.

<img src="felix.jpg" alt="Felix the Cat" width="2456" height="3072" class="mx-auto my-0 rounded-md" style="max-width: 400px; width: 100% ; display: block; margin-left: auto; margin-right: auto;">

I graduated from RIT in 2015 with a bachelors degree in Computer Engineering.

Currently, I am a Senior Embedded Software Engineer at D3 Embedded in Rochester NY. D3 designs and manufactures embedded camera, radar, and robotics systems.
My work is primarily in embedded Linux vision systems.

<script>
function calculate_age(dob) {
    var diff_ms = Date.now() - dob.getTime();
    var age_dt = new Date(diff_ms);
    return Math.abs(age_dt.getUTCFullYear() - 1970);
}
document.getElementById("paul_age").innerHTML = calculate_age(new Date(1993, 8-1, 3))
document.getElementById("felix_age").innerHTML = calculate_age(new Date(2020, 10-1, 2))
</script>