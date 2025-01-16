## Using Different Postals
Postal codes are supported and displayed, but rHUD does not come with its own postal map.

The default postal codes are located in `rhud/data/postals.json`.\
To use your own postal codes, simply replace the default `postals.json`[^1] with your own.

**If your postal codes file isn't working:**
1. Make sure the file name is `postals.json` and is located in the `rhud/data` folder.
2. Check the contents of your postal codes file. The format must be the same as the original postal codes file, meaning that it must be a JSON array of objects, where each object contains `code`, `x`, and `y` properties.\
Example:
   ```json
   [
     { "code": "001", "x": 57.89, "y": 7211.67 },
     { "code": "002", "x": 172.54, "y": 7081.23 },
     { "code": "003", "x": 76.15, "y": 7029.15 },
   ]
   ```

[^1]: The contents of the default `postals.json` file is originally from a postal map called [oulsen_satmap](https://github.com/Oulsen/oulsen_satmap)