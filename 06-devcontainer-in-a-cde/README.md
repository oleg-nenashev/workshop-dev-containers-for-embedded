# 06 - Cloud Developer Environments with Dev Containers

As we have moved most of the development environment to a Dev Containers,
now we can also move this container out of our developer machine!
Many Cloud Developer Environment providers, 
including [GitHub Codespaces](https://github.com/features/codespaces),
support running Dev Containers.
This is what we will do in this section.

## Steps

1. Push your demo project from [01-devcontainer-basics](../01-devcontainer-basics/) to your own GitHub repository

2. Add Code spaces configuration to the Dev Container in the `customizations` section.

```json
      // Configure properties specific to Codespaces.
	    "codespaces": {
		     "openFiles": [
			     "README.md",
		  ]
	    }
```

3. Open the project in GitHub Codespaces.

4. See the Developer environment running in the cloud!

5. Try building the project and running tests.

Note that the first setup may be very slow, especially for Dev Containers with custom images (like this workshop repository).
It is generally recommended to use the [GitHub Codespaces prebuilds](https://docs.github.com/en/codespaces/prebuilding-your-codespaces/about-github-codespaces-prebuilds),
or to cache the Dev Container image.

## When completed

Return to the [main workshop README](../README.md).
