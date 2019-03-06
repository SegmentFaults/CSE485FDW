<h1>CSE 485</h1>
<h2>Data Wrappers from BigQuery to PostgreSQL</h2>
<h3>Insturctions</h3>
<ol>
  <li>Create a compute instance</li>
  <img src="Compute.PNG">
  <p>Just click on the compute section</p>
  <img src="VMInstance.PNG">
  <p>Select that you want to make a new instance</p>
  <img src="create.PNG">
  <p>Select to create a new compute instance</p>
  <img src="params.PNG">
  <p>Create a VM with the following params (possibly less hardware</p>
  <img src="clickhere.PNG">
  <p>This will begin an SSH session where the true fun will begin</p>
  <li>Commands:
    <ol>
        <li>sudo su</li>
        <li>apt-get update</li>
        <li>apt install docker.io</li>
        <li>git clone https://github.com/gabfl/bigquery_fdw.git</li>
        <li>curl ceclnx01.cec.miamioh.edu/~gentilm5/key.json >> key.json</li>
        <li>docker run -v $(pwd)/bigquery_fdw:/opt/bigquery_fdw -v $(pwd)/key.json:/opt/key/key.json -ti gabfl/bigquery_fdw</li>
        <li>Congrats. You're now in Docker</li>
        <li>python3 setup.py install</li>
        <li>This data wrapper is now installed. You can now run my code or the one provided in the repo. Mine shows you how to run from my databases. There is a known error with the connection tester not accepting dashes</li>
        <li>To run mine run "git clone https://github.com/SegmentFaults/CSE485FDW.git"</li>
        <li> su postgres -c 'psql -f CSE485FDW/testScripts/customSetup.sql -d fdw'</li>
        <li> su postgres -c 'psql -f CSE485FDW/testScripts/customQuery.sql -d fdw'     *TO GET OUT JUST PRESS Q</li>
        <li> To exit your docker container use ctrl+p and ctrl+q </li>
        <li> To resume your docker container run docker ps. Find the name of the docker image then run docker run -ti nameofcontainer bash</li>
    </ol>
 </ol>
<p> When you're done make sure to STOP your servers</p>
