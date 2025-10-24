# Peer_Review_PX915
This is a repo with the nessarily things to run my reproducible results: The Generalized Planar Fault Energies for the basal plane, specifically along the slip direction

Set up:

1. git clone https://github.com/FacundoJCosta/Peer_Review_PX915.git
2. cd Peer_Review_PX915
3. module purge
4. source set_up_modules.sh
5. python -m venv venv
6. source venv/bin/activate
7. source julia_set_up.sh
8. git clone https://github.com/wgst/acease.git
9. rm aseace/aseace/ace_calculator.py
10. cp ace_calculator.py aseace/aseace/
11. cd aseace
12. pip install .
13. python -c "import julia; julia.install()"
14. cd .. 
15. pip install -r requirements.txt
16. python -m pip install ipykernel
17. python -m ipykernel install --user --name=test
18. export JULIA_PROJECT="$PWD"
19. jupyter notebook

Now open the stacking_fault notebook and select the kernal test

You should be able to run it now.

If you end the session, run the following commands if the set up has been done:

1. source set_up_modules.sh
2. source venv/bin/activate
3. export JULIA_PROJECT="$PWD"
4. jupyter notebook
