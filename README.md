# 3D Terrain Generation

In this Terrain generation example a heightmap is used. A Heightmap is a raster image used to store values, such as surface elevation data, for display in 3D computer graphics. A heightmap can be used in bump mapping to calculate where this 3D data would create shadow in a material, in displacement mapping to displace the actual geometric position of points over the textured surface, or for terrain where the heightmap is converted into a 3D mesh.

# Height Map and Terrain
 ![terrain](https://user-images.githubusercontent.com/18353476/28543433-9a287d92-7074-11e7-8c90-38b6d6a39a3a.png)
 ![terrain](https://user-images.githubusercontent.com/18353476/27512650-a02f8742-58fc-11e7-89d7-399a611d814a.jpg)

To run this terrain generation example you will need to install the following software.

[DirectX Software Development Kit]( https://www.microsoft.com/en-us/download/details.aspx?id=6812)

[Visual Studio 2015](https://www.visualstudio.com/vs/community/) or later

# Tools to create Custom Heightmaps

[Rendering Height maps in Unity](https://docs.unity3d.com/Manual/StandardShaderMaterialParameterHeightMap.html)

[Creating and Using Custom Heightmaps and Layers in Unreal Engine 4 (UE4)](https://docs.unrealengine.com/en-us/Engine/Landscape/Custom)

[QGIS](https://www.qgis.org/en/site/)

[koordinates](https://koordinates.com/search/?q=dem)

[Earth Explorer (USGS)](https://earthexplorer.usgs.gov/)

# Developing with Vulkan 

[Vulkan is a new generation graphics and compute API](https://www.lunarg.com/vulkan-api-3d-graphics/) that provides high-efficiency, cross-platform access to modern GPUs in both PCs and on mobile platforms. Android 7.0 AKA Nougat brings official support for the Vulkan API.The main benefit of Vulkan over older mobile rendering APIs such as OpenGL ES 3.x is speed. Vulkan is designed to take advantage of multiple CPU cores by allowing the application to build command lists in multiple threads in parallel. This allows the application to take advantage of all of the CPU cores on the device, improving performance.

![vulkan-api](https://user-images.githubusercontent.com/18353476/39510278-0f7e9106-4d9e-11e8-83c1-b55a43df8f4f.png)
