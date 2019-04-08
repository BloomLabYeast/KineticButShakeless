# Table of Contents
1. [Introduction](#introduction)
2. [Getting Started](#gettingstarted)
    - [Prerequisites](#prerequisites)
    - [Opening the Application](#openingtheapplication)
3. [Overview of Applications](#overviewofapplications)
    - [General Overview](#generaloverview)
    - [StaticKinet Specific](#statickinetspecific)
    - [StatiKinetInMass Specific](#statickinetinmassspecific)
4. [Guide for Each Parameter](#guideforeachparameter)
5. [Troubleshooting](#troubleshooting)

<a name="introduction"><a/>
# Introduction
KineticButShakeless contains MATLAB applications, and associated dependent functions, that can be used to create 3D models of the kinetochore of S. cerevisiae. It can be used in conjunction with Microscope Simulator 2 [(*Quammen et al.* 2008)](https://www.ncbi.nlm.nih.gov/pubmed/20431698) to generate simulated images of the kinetochore that can be used for explorative kinetochore research.

The repository contains two main MATLAB applications that are used for two distinct purposes. The first is *StaticKinet*, which is used to model a single randomized instance of a kinetochore based on the given parameters. The second is *StaticKinetInMass*, which allows for the generation of multiple different randomized kinetochore models (i.e. in mass). The former is used for checking the organization of the "proteins" in the kinetochore structure given certain parameters and testing out different combinations through visual and single-output inspection, while the latter is used for generating multiple randomized structures with a given set of parameters for large-scale analysis.

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
  * Run the .exe. Save at the default path (C:\Program Files (x86)\CISMM\Microscope Simulator 2.x.x in Windows) and choose any directory for the PSF file. Do run the program beforehand and make sure the Gibson-Lanni Widefield (GWL) PSF has been added to the PSF list, using the "*Edit Point-Spread Functions*" button and adding it. Create a couple of random simulations to confirm proper image generations with the GLW PSF, as most problems in the program arise in the image generation step.
* (Optional) Google account with less secure app access turned on ([click here](https://support.google.com/accounts/answer/6010255?hl=en) for help).
  * This is needed if you choose to use the email notification functionality of the *StaticKinetInMass* application. The *SendEmail.py* specifically connects to the Gmail's SMTP server, so it must be a Google account. I recommend that you create a throwaway account, so you aren't decreasing the security of your own and cluttering your Sent box. Once you a account that you want to use, follow the following steps:
    * Open the file called *SendEmailSkeleton.m* found in the Functions\KineticButShakelessFunctions folder ([click here](https://github.com/BloomLabYeast/KineticButShakeless/blob/master/Functions/KineticButShakelessFunctions/SendEmailSkeleton.m) to find the function on GitHub).
    * Add your username and password for the Google Account that you want to use to send the emails from.
    * Change the name of the function to *SendEmail* and change the name of the file to *SendEmail.m*, keeping it in the same directory.

<a name="openingtheapplication"><a/>
## Opening the Application
Download the files of the repository and open the KineticButShakeless folder in MATLAB. Add the *Functions* folder (and subfolders) to the path and open the application that you want to use. Make sure the current directory is the KineticButShakeless folder (or, more accurately, the parent directory of the *Functions* folder).

<a name="overviewofapplications"><a/>
# Overview of the Application
<a name="generaloverview"><a/>
## General Overview
The underlying method of how the two application generate their structures is identical and can be broken down in to four parts/panels:
  1. The panel that control the base structure of the kinetochore, which include the number of complexes and its overall diameter, the number of microtubules per structure and their diameter, and any additional rotation/splay as well as stagger of the microtubules.
  2. The panel that controls for the representation of Nuf2, which simply include the length of region that fluorophores can added on and the number of them as much of its parameters are defined by the main ones.
  3. The panel that controls the structure for the representation of Spc29, which include the distance to the center of the microtubule complex, diameter of its own complex, and the number of tubules that make it up and their individual diameters.
  4. The panel that controls the structure for the representation of a kinetochore protein, which include the number of arms, whether they are all unbound, and how far along to place the arm to place the fluorophore.

<a name="statickinetspecific"><a/>
## StaticKinet Specific
In addition to the general features, StaticKinet has two main additions:
  1. The application allows for the user to force the spindle axis to be horizontal, so the differences between parameters can be more easily seen.
  2. The application also has three 2D figures that allow for the user to view the structure of the kinetochore in three set orientations as well as the ability to view the structure in a 3D figure.

<a name="statickinetinmassspecific"><a/>
## StaticKinetInMass Specific
In addition to the general features, StaticKinetInMass has two main additions:
  1. As said before, the application allows for the generation of multiple structures at once, instead of one at a time.
  2. The choice to send email updates about successful or failed attempts to complete the steps in the pipeline.

<a name="guideforeachparameter"><a/>
# Guide for Each Parameter
I have chosen, in effort to keep this documentation relatively short, to add explanations for what each parameter does in the application itself. By hovering over the name of the parameter (and/or its options if given), a explanation will show up describing the purpose of the parameter and its options if it has them.

<a name="troubleshooting"><a/>
# Troubleshooting
Here are some common issues that you might face:
   - A error message that you might get is that TIF's are not being generated. A common cause of this is the Microscope Simulator path not being the default one. This can also be fixed by editing the path in the *BrownianXMLtoTIFF.py* to reflect the new path.
   - A error message that you might get is that the PSF is not correct. There are two common causes for this: the *PSFList* *.xml* file doesn't exist or the path to it is incorrect; or the Gibson-Lanni Widefield PSF has not been added to the list.
   - A error that you might get is that the title name that you have chosen has too many characters, specifically with regards to the imwrite function. In situations like this, what you can do is use the *RecursiveRename.m* function. Starting in the parent directory that contains the *StaticKinetInMass* application output folder, you provide the function with the string that you want to replace and what you want to replace it with. It will then go through and update all of the file and folder names for you.
