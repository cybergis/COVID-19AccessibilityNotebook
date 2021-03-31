# README

```
> tree .
.
├── app_vars.py
├── dockerfile
│   ├── Dockerfile
│   ├── requirements.txt
│   └── src
│       ├── access.py
│       └── JobSubCode.ipynb
├── README.md
└── run_in_docker.sh
```

Explanation:

* `app_vars.py` is an example of a Python variable script required to run the script
* `dockerfile/` contains the dockerfile elements:
  * `Dockerfile` is the dockerfile
  * `requirements.txt` contains the required python packages for pip
  * `src/` contains the code for the job
    * `access.py` is the script that will run
    * `JobSubCode.ipynb` is a notebook version of the code (for debugging purposes)
* `README.md` is the file you're reading
* `run_in_docker.sh` runs the docker container assuming you set the volume paths appropriately

## Running the Job:

A sample `docker run` command can be seen in `run_in_docker.sh` and looks like:

```
docker run --name access \
  -v "/<my path to the app vars file>/app_vars.py":"/myapp/app_vars.py" \
  -v "/<my path to the data folder>":"/myapp/Data" \
  -v "/<where I want results to be stored on the disk>":"/myapp/results" \
  <docker container>
```

Users need to provide the data and give the appropriate file names/paths in `app_vars.py`
