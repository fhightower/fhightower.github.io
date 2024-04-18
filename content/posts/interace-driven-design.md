+++
date = "2024-04-18"
title = "Interface Driven Design"
description = "A method for designing systems with interacting components"
tags = ["Interface Design", "System Design"]
+++

When designing a system with many components which must interact, the primary challenge is getting the components to interact effectively. Typically, each component has a clear set of responsibilities and building it is relatively easy. The difficulty comes when you need to talk to another component.

In this blog post, I advocate for a design approach I call "Interface Driven Design" and provide a framework for applying Interface Driven Design when designing (or trying to understand) a system.

## Why is Interface Driven Design Useful?

When designing complex systems made up of many components in communication, the most error-prone location is often in the system interfaces (at the component boundaries).
Interface Driven Design helps designers focus on one of the most challenging areas of system design. It also makes it easy for teams building different components to collaborate effectively.

### When is Interface Driven Design Useful?

Generally, it is useful in systems with at least two of the following:

- With many components which communicate with each other
- Being built by multiple teams
- Microservices which are each relatively simple, but form a complex system with emergent behaviour

## How to Apply Interface Driven Design?

Interface Driven Design can be applied at multiple levels.
For the sake of this article, we'll apply it at the level of each component of a mircoservice system.
I like to use the following framework to think about each component:

1. Triggers
    - This section should include which systems/event trigger the component as well as what data gets sent to the component
1. Side-effects
    - This section includes any side-effects which are performed by the component (e.g. writing to a DB or triggering another component)
1. Errors/Failures
    - This section details the errors this component may raise/return (usually just the ones that the component will intentionally raise/return)
1. Response(s)
    - This section documents the response(s) the component gives to the various triggers

