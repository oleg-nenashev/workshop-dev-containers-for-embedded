# Workshop - Container Developer Environments. Virtualizing your IDEs for embedded projects

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/oleg-nenashev/workshop-dev-containers-for-embedded)
[![Slides](https://img.shields.io/badge/slides-published-brightgreen?style=for-the-badge)](https://speakerdeck.com/onenashev/workshop-container-developer-environments-virtualizing-your-ides-for-embedded-projects/)

## Abstract

Embedded development and QA are entering a new era, enabled by Cloud Development Environments (CDEs) such as GitHub Codespaces or Devcontainers,
which allow fully configured workspaces to run on laptops, Kubernetes clusters, or public clouds.
Containers and VMs, often managed with tools like KubeVirt and QEMU and wrapped by frameworks like Testcontainers, enable scalable, hardware-aware test setups for HIL testing, firmware validation, and system modeling.
It might sound like a miracle, but modern tech stacks make it possible!

In this workshop, we'll build a containerized developer environment for a robotics project using the open-source ROS2 stack (C++/Python, CMake, custom build tools, Gazebo, etc.), or another audience-nominated example.
Step by step, you will learn to define and customize Dev Containers for their technology stacks, adapt IDEs for embedded workflows,
and package the full environment for sharing across teams and reuse in CI/CD pipelines.

We will also explore how to move these environments beyond the laptop and run them on cloud-based development platforms such as GitHub Codespaces and similar providers. The workshop will also show how tools such as Testcontainers and API-mocking frameworks can support integration testing,
even in embedded projects where external services, simulated devices, and distributed components increasingly play an important role.
Last but not least, we'll explore leveraging the local AI capabilities of large and Small Language Models in our developer environments and tests, using Dev Containers features and Testcontainers extensions.

By the end of the session, participants will understand how to virtualize their IDEs, standardize developer onboarding,
and create reusable development environments that connect local workstations, cloud platforms, and automated pipelines.

## Prerequisites

* Bring-your-own laptop: Linux, macOS, or Windows
* Pre-installed tools
  * Visual Studio Code (VS Code)
  * Installed Docker engine: Docker Desktop or Podman
  * Git - any recent version
* A GitHub Account
* Some remaining credits on GitHub Copilot, free plan is fine
* Good internet connection

## Workshop Structure

### I. Getting started

* [Environment Setup](./00-setup-and-hello-world/README.md)

### II. Key sections

1. [Devcontainer Basics](./01-devcontainer-basics/README.md)
2. [Using AI and agents in Devcontainers](./02-ai-integrations/README.md)
3. [C/C++ tooling in a Devcontainer](./03-cpp-tooling-basics/README.md)
4. [Custom images in a Devcontainer](./04-custom-images/README.md)
5. [ROS and Gazebo in a Devcontainer](./05-ros-gazebo/README.md)
6. [Moving to a Cloud Developer Environment](./06-devcontainer-in-a-cde/README.md)

### III. Optional parts

The following parts can be optionally chosen by the audience
if the time allows and in any order: 

* [Using Devcontainers in CI](./10-ci-integrations/README.md)
* [Integration Testing with Testcontainers](./11-integration-testing/README.md)
* [Using Nix in Devcontainers](./12-nix-in-devcontainers/README.md)
* [Connecting hardware to a Devcontainer](./13-external-hardware/README.md)
* [Custom CDEs](./14-custom-cdes/README.md)

## Before the workshop starts

The workshop is quite heavy on network traffic due to image pulls and
dependency installations from package managers.
To make it faster, run the following commands:

```shell
docker pull hello-world
docker pull mcr.microsoft.com/devcontainers/base:ubuntu
docker pull mcr.microsoft.com/devcontainers/python:3-3.14-trixie
docker pull debian:bookworm-20250317
docker pull ros:kilted-ros-base-noble
docker pull postgres:latest
```

## Slides

Slides are [here](https://speakerdeck.com/onenashev/workshop-container-developer-environments-virtualizing-your-ides-for-embedded-projects/):

<div class="deck-embed js-deck-embed" style="aspect-ratio:1024/576;" data-ratio="1.7777777777777777" data-state="processed">
    <div id="talk_91b3d075a1b94c758d3a24364d97efcd" data-poll-url="https://speakerdeck.com/onenashev/workshop-container-developer-environments-virtualizing-your-ides-for-embedded-projects/status">
      <div class="deck-processing">
        <h1 class="m-0">Processing</h1>
        <div class="lead mb-4 js-process-status">Processing your PDF into slides…</div>
        <div class="deck-processing-progress">
          <div class="deck-processing-bar js-process-progress" style="width:0%"></div>
        </div>
      </div>
</div></div>


## References

- [Slides for the workshop](https://speakerdeck.com/onenashev/workshop-container-developer-environments-virtualizing-your-ides-for-embedded-projects/) - slides for this workshop.
- [Full project](./full-project/) - something you can start without going through the workshop stages. It can be opened in an IDE, and you can follow it
- [Slides: 
Cloud and Hybrid Developer Environments - how virtualization transforms your IDEs for embedded projects](https://speakerdeck.com/onenashev/cloud-and-hybrid-developer-environments-how-virtualization-transforms-your-ides-for-embedded-projects) - my original presentation on Dev Containers from QA&Test 2025

## License

All code is licensed under the Apache License v2.0, unless specified differently.
The workshop contents and texts are shared under the [Creative Commons Attribution-ShareAlike 4.0 International Public License](./LICENSE).


