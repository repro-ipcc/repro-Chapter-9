#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate ipcc_ch9

DIR=Chapter-9

# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_FAQ_9_1_Figure_1.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_FAQ_9_2_Figure_1.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_9_14.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_9_24.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_9_19.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_9_22.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_9_23.png
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_9_15.png

# Apply changes to produce figure of $DIR

echo Patching $DIR
cd $DIR
pip install -e .

patch < ../${DIR}.patch

echo ————————————————————————————————————————
echo Generating FAQ 9.1
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/FAQ9_1_will_human-induced_changes_be_reversible/Plot_Figure
python ./FAQ9.1_get_timeseries_from_data.py
mv ../PNGs/FAQ9.1-RSL-last-glacial-cycle.pdf ../../../../IPCC_AR6_WGI_FAQ_9_1_Figure_1_repro.pdf

echo ————————————————————————————————————————
echo Generating FAQ 9.2
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_14_SI_warming/Plot_Figure
python ./plot_Fig_9_14.py
mv ../PNGs/FAQ9.1-RSL-last-glacial-cycle.pdf ../../../../IPCC_AR6_WGI_FAQ_9_1_Figure_1_repro.pdf

echo ————————————————————————————————————————
echo Generating Fig.9.14
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_14_SI_warming/Plot_Figure
python ./plot_SL_curves.py
mv ../PNGs/Fig_9_14.pdf ../../../../IPCC_AR6_WGI_Figure_9_14_repro.pdf

echo ————————————————————————————————————————
echo Generating Fig.9.24
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_24_snow/Plot_Figure
python Plot_AR6_9-24a.py 
python Plot_AR6_9-24b.py 
mv ../PNGs/snc_NH_CMIP6_1981-2014_vertical.pdf ../../../../IPCC_AR6_WGI_Figure_9_24a_repro.pdf
mv ../PNGs/snc_NH_CMIP6_1981-2014_vertical.png ../../../../IPCC_AR6_WGI_Figure_9_24a_repro.png
mv ../PNGs/snow_scenariodependence_MAM.pdf ../../../../IPCC_AR6_WGI_Figure_9_24b_repro.pdf
mv ../PNGs/snow_scenariodependence_MAM.png ../../../../IPCC_AR6_WGI_Figure_9_24b_repro.png

echo ————————————————————————————————————————
echo Generating Fig.9.19
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_19_AIS_basal/Plot_Figure
# using arg
python PLOT_shade_future_melt_anomalies_maps.py NON_LOCAL
python PLOT_shade_future_melt_anomalies_maps.py NON_LOCAL_MAX_PIG
python PLOT_shade_future_melt_anomalies_maps.py FESOM_PRES
python PLOT_shade_melt_rate_maps.py OBS
python PLOT_shade_melt_rate_maps.py NON_LOCAL
python PLOT_shade_melt_rate_maps.py NON_LOCAL_MAX_PIG
python PLOT_shade_melt_rate_maps.py FESOM_PRES

mv ../PNGs/map_melt_AR6_future_anom_FESOM_PRES.pdf ../../../../IPCC_AR6_WGI_Figure_9_19f_repro.pdf
mv ../PNGs/map_melt_AR6_future_anom_NON_LOCAL_MAX_PIG.pdf ../../../../IPCC_AR6_WGI_Figure_9_19e_repro.pdf
mv ../PNGs/map_melt_AR6_future_anom_NON_LOCAL.pdf ../../../../IPCC_AR6_WGI_Figure_9_19d_repro.pdf
mv ../PNGs/map_melt_AR6_pres_FESOM_PRES.pdf ../../../../IPCC_AR6_WGI_Figure_9_19c_repro.pdf
mv ../PNGs/map_melt_AR6_pres_NON_LOCAL_MAX_PIG.pdf  ../../../../IPCC_AR6_WGI_Figure_9_19b_repro.pdf
mv ../PNGs/map_melt_AR6_pres_OBS.pdf ../../../../IPCC_AR6_WGI_Figure_9_19a_repro.pdf

echo ————————————————————————————————————————
echo Generating Fig.9.22
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_22_permafrost/Plot_Figure
python PLOT_AR6_WGI_Fig9-22.py 
mv ../PNGs/AR6_WGI_Fig9-22.png ../../../../IPCC_AR6_WGI_Figure_9_22_repro.png
mv ../PNGs/AR6_WGI_Fig9-22.pdf ../../../../IPCC_AR6_WGI_Figure_9_22_repro.pdf

echo ————————————————————————————————————————
echo Generating Fig.9.23
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_23_snow/Plot_Figure
python SnowObs.py 
mv ../PNGs/SnowObs1981-2018.png ../../../../IPCC_AR6_WGI_Figure_9_23_repro.png
mv ../PNGs/SnowObs1981-2018.pdf ../../../../IPCC_AR6_WGI_Figure_9_23_repro.pdf

echo ————————————————————————————————————————
echo Generating Fig.9.13+15
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_15_Antarctic_SI/Plot_Figure
python plot_Fig_9_13_RIGHT_and_Fig_9_15_RIGHT.py
python plot_9_13_and_9_15_LEFT_Panels.py

mv ../PNGs/NorthernHemisphereLEFT_PANEL.pdf ../../../../IPCC_AR6_WGI_Figure_9_13_left_repro.pdf
mv ../PNGs/NorthernHemisphereLEFT_PANEL.png ../../../../IPCC_AR6_WGI_Figure_9_13_left_repro.png
mv ../PNGs/SouthernHemisphereLEFT_PANEL.pdf ../../../../IPCC_AR6_WGI_Figure_9_15_left_repro.pdf
mv ../PNGs/SouthernHemisphereLEFT_PANEL.png ../../../../IPCC_AR6_WGI_Figure_9_15_left_repro.png
mv ../PNGs/Fig_9_15_RIGHT.png ../../../../IPCC_AR6_WGI_Figure_9_15_right_repro.png
mv ../PNGs/Fig_9_15_RIGHT.pdf ../../../../IPCC_AR6_WGI_Figure_9_15_right_repro.pdf
mv ../PNGs/Fig_9_13_RIGHT.png ../../../../IPCC_AR6_WGI_Figure_9_13_right_repro.png
mv ../PNGs/Fig_9_13_RIGHT.pdf ../../../../IPCC_AR6_WGI_Figure_9_13_right_repro.pdf

echo ————————————————————————————————————————
echo Generating Fig.9.8
cd ~/repro-Chapter-9/Chapter-9/Plotting_code_and_data/Fig9_08_OHT/Plot_Figure
python Plot_Upper_Right_Panel.py
python Plot_Bottom_Left_Panel.py
mv ../PNGs/AMOC_timeseries.png ../../../../IPCC_AR6_WGI_Figure_9_10_upper_right_repro.png
mv ../PNGs/AMOC_timeseries.pdf ../../../../IPCC_AR6_WGI_Figure_9_10_upper_right_repro.pdf
mv ../PNGs/delta_AMOC_historic_mmodel.pdf ../../../../IPCC_AR6_WGI_Figure_9_10_bottom_left_repro.pdf
mv ../PNGs/delta_AMOC_historic_mmodel.png ../../../../IPCC_AR6_WGI_Figure_9_10_bottom_left_repro.png


# Remove the changes
git checkout ../../Chapter-7