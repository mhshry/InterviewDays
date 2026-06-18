**Difference from Service Bus \& Event Hubs**

Event Grid: Push-based, reactive event routing, lightweight notifications that trigger a reaction in other. 64KB basic plan

Service Bus: Reliable message delivery with ordering and sessions. 260 KB, Dead latter, retaintion time 7 days, Mass trasiant, Duplicate Detection, FIFO, MessageId check duplicate drop, Filter-SqlFilter \& CustomFilter Selection Subscriber

Event Hubs: High-throughput event ingestion for analytics.`	



**Azure Data Factory** is a serverless and cloud-based data integration service and platform used for the creation of ETL and ELT pipelines. It helps in the creation of data-driven workflows for the planning and execution of data movements and data transformation at scale.



**Azure Function app:**

Consumption Plan Default: 5 minutes Maximum: 10 minutes timeout, MAx 100/200 instance windows/Linux, pay as you go billing

Flex Consumption Plan Default: 30 minutes Maximum: Unbounded - Always on, reduce cold start, Grace timeout 10 min, Event Driven

Premium Plan Default: 30 minutes Maximum: Unbounded, more memory reduce cold start,  Grace timeout 10 min, Scalout automatically, nstance

Dedicated (App Service) Plan Default: 30 minutes timeout Maximum: Unbounded - Shared plan to multiple app

Http trigger- 230 second timeout bacuse of default time out of load balancer



Authorization Levels (API Keys): Anonymous(No key is required),Function(function-specific key), Admin(master key (host key)), Query pram?code=, header x-functions-key



Deployment Slot: Swap source to target, Configure auto swap



**APIM**: Accept api call \\\& route, Verify api keys credenctial,  usage quotas and rate limits, Transforms requests and responses specified in policy ,  logs, Metrix and monitoring troubshooting



Managed(Default) backend api deveopler and Self hosted (Onprem to cloud) hybride and multi cloud scnerio

Policy: Inbound, 

out bound(refine output, removes a sensitive header and adds a custom one), Select Add header, Validate Header, content, Status, custom

&#x20;onerror set in xml

Secure: SubscriptionKey in request header, Client Certificate also Set Inbound policy, Oauth

Components: API gateway, a management plane, and a developer portal, Api provider- function app, app service, aks



**COSMOS DB**:

Store procedure in JavaScript, Trigger- Pre \\\& post (Select \\\* from root, GetContext().getCollection()), User define function based on input get data in select query



**Logic APP**

Authentication: oauth, Service principle, ManagedIdentity

Create with Consumption satateful and Standard(workflow)



**Azure Durable Functions:**

Fan-In is a design pattern used to run multiple functions in parallel and then combine their results

IDurableOrchestrationContext, context.CallActivityAsync<int>("ProcessData", val)



&#x20;stateful workflows in a serverless environment. They help manage: Long-running processes, Workflow orchestration

Function chaining Human interaction workflows Retry handling



Function chaining pattern- Valiadte Order, Process payment, invoice, Send email

fan-out/fan-in pattern- Process 100 files simultaneously, Aggregate results afterward, Faster execution

async HTTP API pattern: Flow- Client starts process- get status url- Polls until completion



monitor pattern: Monitor inventory, stoke price, job to complete

human interaction pattern: Approval work flow, manager Otherization, OtP

Durable Functions maintain state- Event Sourcing, Execution History, Checkpoint- State is persisted in Azure Storage

task hub: A logical container for orchestration resources.

Contains- Queue, table, Instance state

handle failures in orchestration- retry, Dead letter queue, Compnation transation (Undo operation), Error handling
