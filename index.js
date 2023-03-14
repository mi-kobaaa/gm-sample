const gm = require('gm');

const imagePath = 'image.jpg';

const width = 640;
const height = 480;

const outputName = 'resized_image.jpg';

gm(imagePath)
  .resize(width, height)
  .write(outputName, (err) => {
    if (err) {
      console.error(err);
      return;
    }
    console.log(`Resized image saved as ${outputName}`);
  });
