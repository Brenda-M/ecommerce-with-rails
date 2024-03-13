Product.delete_all

products_data = [
  {
    title: 'Vintage Floral Dress',
    description: 'This vintage floral dress features a classic design with a modern twist. Made from high-quality fabric, it offers both style and comfort. Perfect for a day out in the sun or a casual evening gathering with friends. The floral print adds a touch of elegance, while the A-line silhouette flatters any body type. Pair it with sandals for a relaxed look or dress it up with heels for a special occasion.',
    image_url: 'vintage-dress.webp',
    price: 59.99
  },
  {
    title: 'Canvas Backpack',
    description: 'Stay organized and stylish with this durable canvas backpack. With multiple compartments and pockets, it\'s perfect for carrying all your essentials on the go. The adjustable shoulder straps ensure a comfortable fit, while the sturdy construction ensures long-lasting use. Whether you\'re commuting to work or exploring the great outdoors, this backpack is a must-have accessory. Available in a variety of colors to suit your personal style.',
    image_url: 'canvas-backpack.jpg',
    price: 39.99
  },
  {
    title: 'Classic Aviator Sunglasses',
    description: 'Complete your look with these classic aviator sunglasses. Featuring a timeless design and UV-protective lenses, they offer both style and protection from the sun\'s harmful rays. The lightweight metal frame and adjustable nose pads ensure a comfortable fit, while the mirrored lenses add a touch of sophistication. Whether you\'re lounging by the pool or strolling through the city streets, these sunglasses will keep you looking cool and confident.',
    image_url: 'glasses.webp',
    price: 24.99
  },
  {
    title: 'Leather Crossbody Bag',
    description: 'Add a touch of elegance to any outfit with this chic leather crossbody bag. Crafted from premium leather, it\'s both stylish and practical. The adjustable strap allows for comfortable wear, while the multiple pockets provide ample storage for your essentials. Whether you\'re running errands or heading out for a night on the town, this versatile bag is sure to become your go-to accessory. Available in a range of colors to suit your personal style.',
    image_url: 'leather-bag.jpg',
    price: 79.99
  },
  {
    title: 'Knit Sweater',
    description: 'Stay cozy and stylish with this knit sweater. Made from soft, breathable fabric, it\'s perfect for layering during the cooler months. The classic crewneck design and ribbed cuffs add a timeless touch, while the relaxed fit ensures all-day comfort. Pair it with jeans for a casual weekend look or dress it up with trousers for a more polished ensemble. Available in a variety of colors to suit your personal style.',
    image_url: 'knit-sweater.jpg',
    price: 49.99
  },
  {
    title: 'Striped Button-Up Shirt',
    description: 'Elevate your wardrobe with this striped button-up shirt. Made from lightweight cotton fabric, it\'s perfect for both work and play. The classic striped pattern adds a touch of sophistication, while the button-up design allows for easy layering. Pair it with chinos for a polished office look or wear it untucked with jeans for a more relaxed vibe. Available in a range of colors and sizes to suit your personal style.',
    image_url: 'stripped-shirt.jpeg',
    price: 34.99
  }
]

products_data.each do |product_data|
  Product.create!(product_data)
end
