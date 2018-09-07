# Testing Data (for point cloud visualization)

Example point cloud data that can be used for example displays and tests. 

**NOTE:** Creating these datasets requires [PDAL](https://pdal.io). If you don't have pdal installed, please checkout their [installation guides]((https://pdal.io/download.html)) or use via [docker](https://pdal.io/quickstart.html).

## Data description
As of now, there are three sets of point cloud data that are available for testing. 1. **ASPRS LAS specified data** (data in little-endian format) that can be found in the `las` directory. 2. **Entwine Point Format** (EPT) data that can be found in the `ept/NorthCarolina` directory. And 3. A collection of random point clouds that can be found in the `random` directory.

### las
A few notes on the naming convention of generated files:

- Files are named with the following convention:`v<LAS minor version number>d<LAS data format>.las`. Therefore, `v1d1.las` is a point cloud with a minor version of `1` and a data format of `1`.
- Each point of each file has a randomly assigned class that (from class numbers that are not reserved by ASPRS).
- Each file has a total of 10 points.
- Point clouds have an SRS assigned.

Data generation documentation is found in the `las/generator/` directory.

### ept

This point cloud sample dataset was originally prepared by Markus Neteler and Helena Mitasova in their book ["Open Source GIS: A GRASS GIS Approach"](https://grassbook.org/datasets/datasets-3rd-edition/). From their description:
> We developed a completely new free geospatial dataset and substituted all Spearfish (SD) examples in the previous editions with this new, much richer North Carolina (NC, USA) data set. This data set is a comprehensive collection of raster, vector and imagery data covering parts of North Carolina (NC), USA (map), prepared from public data sources provided by the North Carolina state and local government agencies and Global Land Cover Facility (GLCF)

We will only use the sample lidar data and convert it into the [EPT format](https://github.com/connormanning/ept). The EPT converted files are in the `ept/NorthCarolina` directory. Documentation on acquiring this data can be found in the `ept/README.md`. 

### random

Various datasets from PDAL workshop material and other sources.
