# Table of Contents
1. [Introduction](#introduction)
2. [Getting Started](#gettingstarted)
    - [Prerequisites](#prerequisites)
    - [Opening the Application](#openingtheapplication)

<a name="introduction"><a/>
# Introduction
KineticButShakeless contains MATLAB applications, and associated dependent functions, that can be used to create 3D models of the kinetochore of S. cerevisiae. It can be used in conjuction with Microscope Simulator 2 [(*Quammen et al.* 2008)](https://www.ncbi.nlm.nih.gov/pubmed/20431698) to generate simulated images of the kinetochore that can be used for explorative kinetochore research.

The repository contains two main MATLAB applications that are used for two distinct purposes. The first is *StaticKinet*, which is used to model a single randomized instance of a kinetochore based on the given parameters. It provides in-built visualization of the 3D coordinates through three 2D represenations as well as through a 3D popup. The second is *StaticKinetInMass*, which, as you can probably guess, allows for the generation of multiple different randomized kinetochore models (i.e. in mass). The former is used for checking the organization of the "proteins" in the kinetochore structure given certain parameters and testing out different combinations through visual and single-output inspection, while the latter is used for generating multiple randomized structures with a given set of parameters for large-scale analysis.

However, apart from small differences in interface and intended usage, both applications support the same fine-grain control of the kinetochore structure as well as control of key Microscope Simulator 2 parameters for simulated image generation.

<a name="gettingstarted"><a/>
# Getting Started
<a name="prerequisites"><a/>
## Prerequisites
* [MATLAB](https://www.mathworks.com/downloads/)
* The following MATLAB Add-Ons ([click here](https://www.mathworks.com/help/matlab/matlab_env/get-add-ons.html) for help):
  * [Statistics and Machine Learning Toolbox](https://www.mathworks.com/products/statistics.html)
  * [Phased Array System Toolbox](https://www.mathworks.com/products/phased-array.html)
  * [Parallel Computing Toolbox](https://www.mathworks.com/products/parallel-computing.html)
  * [Simulink](https://www.mathworks.com/products/simulink.html)
  * Any additional package that the Add-Ons above require
* [Bio-Formats MATLAB Toolbox](https://www.openmicroscopy.org/bio-formats/downloads/)
  * Download and extract in any directory. Add the toolbox folder and subfolders (i.e. add with subfolders) to MATLAB's path ([click here](https://www.mathworks.com/help/matlab/matlab_env/add-remove-or-reorder-folders-on-the-search-path.html) for help).
* [Microscope Simulator 2.x.x](http://cismm.web.unc.edu/software/)
  * Run the .exe. Save at the deafult path (C:\Program Files (x86)\CISMM\Microscope Simulator 2.x.x in Windows) and choose any directory for the PSF file. Do run the program beforehand and make sure the Gibson-Lanni Widefield (GWL) PSF has been added to the PSF list, using the "*Edit Point-Spread Functions*" button and adding it. Create a couple of random simulations to confirm proper image generations with the GLW PSF, as most problems in the program arise in the image generation step.
* (Optional) Google account with less secure app access turned on ([click here](https://support.google.com/accounts/answer/6010255?hl=en) for help).
  * This is needed if you choose to use the email notifications. One of files in the *Functions* folder  


<a name="openingtheapplication"><a/>
## Opening the Application
Download the files of the repository and open the KineticButShakeless folder in MATLAB. Add the *Functions* folder (and subfolders) to the path and open the application that you want to use. Make sure the current directory is the KineticButShakeless folder (or, more accurately, the parent directory of the *Functions* folder).
