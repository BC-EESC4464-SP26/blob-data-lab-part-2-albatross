%% 

ncid_satellite=netcdf.open(satellite_filename, "NC_NOWRITE");

lat_s= ncread(satellite_filename, "latitude");
lon_s= ncread(satellite_filename, "longitude");


%%
datenum(2020,2,1)

anom_plot=squeeze(sstAnom(:,:,86));
%%

figure (8); clf
worldmap ([20 60], [-180 -120])
contourfm(double(lat_s), double(lon_s),anom_plot','linecolor','none');
colorbar
colormap(cmocean('balance','pivot'))
geoshow('landareas.shp','FaceColor','black')
title('sstAnom from February 2020')

