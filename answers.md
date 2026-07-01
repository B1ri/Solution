****First task****

1. **Critical** – The urgency is high because the issue has already been ongoing for one hour. Impact is also high because patients are already waiting and the problem is blocking the workflow of multiple people in the system. 
<br>
2. **Low** – The impact is low because it only slows down their workflow but does not stop it entirely.
<br>
3. **Medium** – According to  assignment, it affects only one specific scenario while all other standard X-rays are processing correctly. Therefore the impact is medium/low. The urgency is medium because it is already happening, but its overall impact remains low 
<br>
4. **High** – The current impact is low because the hospital is cosed at the moment. However, the potential impact is high bacuse the hospital goes live tomorrow and it may affect a lot of people. The urgency is medium because its not affecting users right now but it needs to be resolved before tommorow morning.


****Second task****

1. I think that problem is somewhere before scans reach our receiver.
Based on the logs, the receiver looks healthy and idle. Heartbeat checks to the Hospital Autorouter API were successful. However, there is no evidence in the receiver logs that new scans are reaching the receiver. This suggests the issue is likely related to real scan transfer before the scans reach the receiver rather than AI processing itself.
<br>
2. We need the hospital team to provide logs confirming whether their hospital API sucesfully sent scans to our receiver.
Logs should include:

    1. time when each scan was sent
    2. how many scans were sent
    3. response status from our receiver
    4. any error messages
<br>
3. 
